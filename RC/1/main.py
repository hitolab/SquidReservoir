import numpy as np
import scipy.stats as sp
from reservoir_network import ReservoirNetWork
from generate_bgr import ImageProcessing
import matplotlib.pyplot as plt
import csv

movie_second = 15
rgb = 3
width = 4
height = 3
for_times = 2

T = movie_second * pow(2,for_times)
#T_train = movie_second * pow(2,for_times)
#T_result = movie_second * pow(2,for_times)
#T = T_train + T_result
dt = 1
AMPLITUDE = 0.9
LEAK_RATE=0.02
NUM_INPUT_NODES = width * height * rgb
NUM_RESERVOIR_NODES = 100
NUM_OUTPUT_NODES = 1
NUM_TIME_STEPS = int(T/dt)


def main():

	input_data = ImageProcessing.generate_bgr(width, height) #画像を何個に分割するか(横、縦)

	input_std = sp.stats.zscore(input_data, axis=0)

	for i in range(for_times):
		input_std = np.vstack([input_std, input_std])

	target_data = np.array([1,1,1,2,2,2,3,3,3,4,4,4,5,5,5])
	for i in range(for_times):
		target_data = np.hstack([target_data,target_data])
	target_data = target_data.reshape(-1,1) #reshapeの-1による指定されると、推測して決定される。

	model = ReservoirNetWork(inputs = input_std, #ReservoirNetwork.pyを参照
		target_data = target_data,
		num_input_nodes=NUM_INPUT_NODES, 
		num_reservoir_nodes=NUM_RESERVOIR_NODES, 
		num_output_nodes=NUM_OUTPUT_NODES, 
		leak_rate=LEAK_RATE)

	model.train() # 訓練

	train_result = model.get_train_result() # 訓練の結果を取得

	t = np.linspace(0, T, NUM_TIME_STEPS)
	## plot
	plt.plot(t, target_data, label="target_data")
	plt.plot(t, train_result, label="trained")
	#plt.plot(t[:T_train], target_data, label="target_data")
	#plt.plot(t[T_train:], train_result, label="predicted")
	plt.legend()
	plt.title("Echo State Network Sin Prediction")
	plt.xlabel("time[ms]")
	plt.ylabel("y(t)")
	plt.show()

if __name__=="__main__":
		main()