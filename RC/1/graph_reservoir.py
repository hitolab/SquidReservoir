import cv2
import csv
import pandas as pd
import numpy as np
import scipy.stats as sp
import glob
import matplotlib.pyplot as plt

T = 240 #for_times 5 -> 3 ,960 -> 240
NUM_RESERVOIR_NODES = 10

def main():

	csvdata = pd.read_csv("reservoir_nodes.csv", header=None)
	c = np.array
	c = csvdata.values
	print(c)
			
	
	t = np.linspace(0, T, T)
	## plot
	for i in range(NUM_RESERVOIR_NODES):
		plt.plot(t, c[:,i], label="input")
	#plt.plot(t[:T_train], target_data, label="target_data")
	#plt.plot(t[T_train:], train_result, label="predicted")
	plt.legend()
	plt.title("Echo State Network Sin Prediction")
	plt.xlabel("time[ms]")
	plt.ylabel("y(t)")
	plt.show()

if __name__=="__main__":
		main()