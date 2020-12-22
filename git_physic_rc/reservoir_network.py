import numpy as np
import csv
from scipy import linalg

class ReservoirNetWork:

	def __init__(self, inputs, target, input_dimension, validation_inputs, validation_target, leak_late = 0.2):
		self.inputs = inputs # 学習で使う入力
		self.target = target
		self.input_dimension = input_dimension
		self.validation_inputs = validation_inputs
		self. validation_target = validation_target

		# init weights
		self.weights = self.generate_weights(input_dimension)

		self.leak_late = leak_late


	def get_output(self, inputs, targets, lambda0=0.1):
		count = 0
		output = np.zeros(0)
		for input in inputs:
			target = targets[count]
			self.weight = self._update_weight(input, target)
			output = np.append(output, self.get_a_output(input))
			#self.weights = self.leak_late * self.weights + (1 - self.leak_late) * weight
			count += 1
		return output

	'''
	def _update_weights(self, lambda0=0.1): #lambdaの値も気になる...
		# Ridge Regression
		inv_x = np.dot(self.inputs.T, self.inputs) + lambda0
		# update weights of output layer
		self.weights = inv_x * self.inputs.T * self.target_output
	'''

	# 出力層の重みを更新
	def _update_weight(self, a_input, target, lambda0=0.1):
		# Ridge Regression
		E_lambda0 = lambda0
		inv_x = np.dot(a_input.T, a_input) + E_lambda0
		# update weights of output layer
		weight = (inv_x * a_input.T) * target
		weight = weight.reshape(self.input_dimension, 1)
		return weight


	def get_a_output(self, inputs):
		return inputs @ self.weights



	def generate_weights(self, input_dimension):
		weights = np.random.randn(input_dimension,1)
		spectral_radius = max(abs(weights)) #ユーザーが決める値。リアプノフ指数と関連。
		return weights / spectral_radius
