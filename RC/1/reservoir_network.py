import numpy as np
import csv
from scipy import linalg

class ReservoirNetWork:

	def __init__(self, inputs, target_data, num_input_nodes, num_reservoir_nodes, num_output_nodes, leak_rate=0.2, activator=np.tanh):
		self.inputs = inputs # 学習で使う入力
		self.target_data = target_data
		self.log_reservoir_nodes = np.array([np.zeros(num_reservoir_nodes)]) # reservoir層のノードの状態を記録

		# init weights
		self.weights_input = self._generate_input_weights(num_input_nodes, num_reservoir_nodes)
		self.weights_reservoir = self._generate_reservoir_weights(num_reservoir_nodes)
		self.weights_output = np.zeros([num_reservoir_nodes, num_output_nodes])

		# それぞれの層のノードの数
		self.num_input_nodes = num_input_nodes
		self.num_reservoir_nodes = num_reservoir_nodes
		self.num_output_nodes = num_output_nodes

		self.leak_rate = leak_rate # 漏れ率
		self.activator = activator # 活性化関数

    # 学習する
	def train(self,lambda0=0.1):
		for input in self.inputs:
			current_state = np.array(self.log_reservoir_nodes[-1, :])
			self.log_reservoir_nodes = np.vstack([self.log_reservoir_nodes, self._get_next_reservoir_nodes(input, current_state)])
		self.log_reservoir_nodes = self.log_reservoir_nodes[1:, :]
		self._update_weights_output(lambda0)


    # reservoir層のノードの次の状態を取得
	def _get_next_reservoir_nodes(self, input, current_state):
		#self._graph_reservoir(current_state)   #この行を有効にすると、x(t)をcsvに保存できる。
		echo = (1 - self.leak_rate) * current_state
		input_state = self.leak_rate * (input @ self.weights_input + current_state @ self.weights_reservoir)
		next_state = echo + input_state
		return self.activator(next_state)

    # 出力層の重みを更新
	def _update_weights_output(self, lambda0):
		# Ridge Regression
		E_lambda0 = np.identity(self.num_reservoir_nodes) * lambda0
		inv_x = np.linalg.inv(self.log_reservoir_nodes.T @ self.log_reservoir_nodes + E_lambda0)
		# update weights of output layer
		self.weights_output = (inv_x @ self.log_reservoir_nodes.T) @ self.target_data

	#########################################################################################

    # 学習で得られた重みを基に訓練データを学習できているかを出力
	def get_train_result(self):
		outputs = []
		reservoir_nodes = np.zeros(self.num_reservoir_nodes)
		for input in self.inputs:
			reservoir_nodes = self._get_next_reservoir_nodes(input, reservoir_nodes)
			print(reservoir_nodes)
			outputs.append(self.get_output(reservoir_nodes))
		return outputs

    # get output of current state
	def get_output(self, reservoir_nodes):
		return reservoir_nodes @ self.weights_output



	#############################
	##### Win, Wres の初期化 #####
	#############################

	#weights_inputを0.1か-0.1で初期化
	def _generate_input_weights(self, num_pre_nodes, num_post_nodes):
		w_in = (np.random.randint(0, 2, num_pre_nodes * num_post_nodes).reshape([num_pre_nodes, num_post_nodes]) * 2 - 1) * 0.1
		return w_in

	#weights_reservoirを初期化
	def _generate_reservoir_weights(self, num_nodes):
		weights = np.random.normal(0, 1, num_nodes * num_nodes).reshape([num_nodes, num_nodes])
		spectral_radius = max(abs(linalg.eigvals(weights)))
		return weights / spectral_radius


	##################################
	##### reservoir_nodesの可視化 #####
	##################################

	def _graph_reservoir(self, current_state):
		with open('reservoir_nodes.csv','a') as f:
			c = csv.writer(f, lineterminator='\n')
			c.writerow(current_state)