import numpy as np
import random
import scipy.stats as sp
from sklearn.preprocessing import MinMaxScaler
from reservoir_network import ReservoirNetWork
from generate_bgr import ImageProcessing
import matplotlib.pyplot as plt
import csv

height = 40
width = 30
input_dimension = height * width * 3

seconds = 3
fps = 1

Sample_picture = "Try2_aiueo_volhalf/0004.png"		#連番画像のうち、いずれか一つの画像を指定
File = "Try2_aiueo_volhalf/*.png"	



def main():

	bgr = ImageProcessing.generate_bgr(width, height, Sample_picture, File) #正規化されたbgrの行列を取得。(15, 40*30*3)

	inputs = np.zeros(input_dimension)
	targets = np.zeros(0)

	validation_inputs = np.zeros(input_dimension)
	validation_targets = np.zeros(0)

	for i in range(30):

		rand = random.randint(0,4)

		for i in range(seconds * fps):

			a_inputs = bgr[(rand * seconds * fps) + i, :]

			inputs = np.vstack((inputs, a_inputs))

			if rand%5 == 0:
				a_target = 0
			elif rand%5 == 1:
				a_target = 1
			elif rand%5 == 2:
				a_target = 2
			elif rand%5 == 3:
				a_target = 3
			elif rand%5 == 4:
				a_target = 4

			targets = np.append(targets, a_target)


	for i in range(30):

		rand = random.randint(0,4)

		for i in range(seconds * fps):

			a_validation_inputs = bgr[(rand * seconds * fps) + i, :]

			validation_inputs = np.vstack((validation_inputs, a_validation_inputs))

			if rand%5 == 0:
				a_validation_target = 0
			elif rand%5 == 1:
				a_validation_target = 1
			elif rand%5 == 2:
				a_validation_target = 2
			elif rand%5 == 3:
				a_validation_target = 3
			elif rand%5 == 4:
				a_validation_target = 4

			
			validation_targets = np.append(validation_targets, a_validation_target)


	inputs = np.delete(inputs, 0, 0)
	validation_inputs = np.delete(validation_inputs, 0, 0)


	model = ReservoirNetWork(inputs = inputs, #ReservoirNetwork.pyを参照
		target = targets,
		input_dimension = input_dimension,
		validation_inputs = validation_inputs,
		validation_target = validation_targets
		)

	train_output = model.get_output(inputs, targets)

	train_output = (train_output - np.min(train_output))/(np.max(train_output) - np.min(train_output)) * 4

	validation_output = model.get_output(validation_inputs, validation_targets)

	validation_output = (validation_output - np.min(validation_output))/(np.max(validation_output) - np.min(validation_output)) * 4

	
	#最小値０、最大値４で正規化
	
	T = 90

	t = np.linspace(1, T*2, T*2)
	## plot
	plt.plot(t[:T], targets, label="target")
	plt.plot(t[:T], train_output, label="train_output")

	plt.plot(t[T:], validation_targets, label="val_target")
	plt.plot(t[T:], validation_output, label="val_output")
	plt.legend()
	plt.title("SquidReservoir")
	plt.xlabel("time[ms]")
	plt.ylabel("a,i,u,e,o = 0,1,2,3,4")
	plt.show()




if __name__=="__main__":
		main()