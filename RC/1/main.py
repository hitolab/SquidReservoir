import numpy as np
from reservoir_network import ReservoirNetWork
from generate_bgr import ImageProcessing
import matplotlib.pyplot as plt
import csv

T = 121
dt = 1
AMPLITUDE = 0.9
LEAK_RATE=0.02
NUM_INPUT_NODES = 36
NUM_RESERVOIR_NODES = 150
NUM_OUTPUT_NODES = 2
NUM_TIME_STEPS = int(T/dt)

# example of activator
def ReLU(x):
	return np.maximum(0, x)

def main():

	input_data = ImageProcessing.generate_bgr(4, 3)##画像を何個に分割するか(横、縦)

	model = ReservoirNetWork(inputs=input_data, #ReservoirNetwork.pyを参照
		outputs_target = target_data,
		num_input_nodes=NUM_INPUT_NODES, 
		num_reservoir_nodes=NUM_RESERVOIR_NODES, 
		num_output_nodes=NUM_OUTPUT_NODES, 
		leak_rate=LEAK_RATE)

	model.train() # 訓練
	train_result = model.get_train_result() # 訓練の結果を取得

	t = np.linspace(0, T, NUM_TIME_STEPS)
	## plot
	plt.plot(t, data_sin, label="inputs")
	plt.plot(t[:num_target], train_result, label="trained")
	plt.plot(t[num_target:], predict_result, label="predicted")
	plt.axvline(x=int(T * RATIO_TRAIN), label="end of train", color="green") # border of train and prediction
	plt.legend()
	plt.title("Echo State Network Sin Prediction")
	plt.xlabel("time[ms]")
	plt.ylabel("y(t)")
	plt.show()

if __name__=="__main__":
		main()