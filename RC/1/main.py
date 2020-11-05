import numpy as np
from reservoir_network import ReservoirNetWork
from generate_bgr import ImageProcessing
import matplotlib.pyplot as plt
import csv

T = 40
dt = 1
AMPLITUDE = 0.9
LEAK_RATE=0.02
NUM_INPUT_NODES = 108
NUM_RESERVOIR_NODES = 150
NUM_OUTPUT_NODES = 1
NUM_TIME_STEPS = int(T/dt)

# example of activator
def ReLU(x):
	return np.maximum(0, x)

def main():

	width = 4
	height = 3

	input_data = ImageProcessing.generate_bgr(width, height) #画像を何個に分割するか(横、縦)
	input_data = input_data.reshape([5, width * height * 3 * 3])
	for i in range(3):
		input_data = np.vstack([input_data, input_data])
	print(input_data)

	target_data = np.array([1,2,3,4,5])
	for i in range(3):
		target_data = np.hstack([target_data,target_data])
	target_data = target_data.reshape(-1,1) #reshapeの-1による指定されると、推測して決定される。
	print(target_data)

	model = ReservoirNetWork(inputs=input_data, #ReservoirNetwork.pyを参照
		target_data = target_data,
		num_input_nodes=NUM_INPUT_NODES, 
		num_reservoir_nodes=NUM_RESERVOIR_NODES, 
		num_output_nodes=NUM_OUTPUT_NODES, 
		leak_rate=LEAK_RATE)

	model.train() # 訓練
	train_result = model.get_train_result() # 訓練の結果を取得

	t = np.linspace(0, T, NUM_TIME_STEPS)
	## plot
	plt.plot(t, target_data, label="input_data")
	plt.plot(t, train_result, label="predicted")
	plt.legend()
	plt.title("Echo State Network Sin Prediction")
	plt.xlabel("time[ms]")
	plt.ylabel("y(t)")
	plt.show()

if __name__=="__main__":
		main()