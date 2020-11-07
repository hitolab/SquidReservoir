import cv2
import csv
import numpy as np
import scipy.stats as sp
import glob
import matplotlib.pyplot as plt


def main():
	rgb = 3
	movie_second = 15
	fps = 1
	T = movie_second * fps

	reshaped_width = 3
	reshaped_height = 4

	sample = cv2.imread("Try2_aiueo_volhalf/0004.png")##連番画像のどれでもよいのでサンプル画像として指定
	width, height, channel = sample.shape
	pixels = width * height
	mesh_width = width/reshaped_width
	mesh_height = height/reshaped_height
	mesh_pixels = mesh_width * mesh_height

	bgr_comp = np.zeros(int(pixels/mesh_pixels*3))

	files = glob.glob("Try2_aiueo_volhalf/*.png")##連番画像が保存されているフォルダを指定

	for file in files:

		img = cv2.imread(file)#読み込み

		reshaped_bgr_array = img.reshape(pixels, 3)

		split_bgr_array = np.hsplit(reshaped_bgr_array, 3)#bgrそれぞれの行列に分割

		split_b_array = split_bgr_array[0]
		split_g_array = split_bgr_array[1]
		split_r_array = split_bgr_array[2]

		split_b_array_T = np.transpose(split_b_array)
		split_g_array_T = np.transpose(split_g_array)
		split_r_array_T = np.transpose(split_r_array)
		'''
		print(split_b_array_T)
		print(split_g_array_T)
		print(split_r_array_T)
		'''

		b_array = split_b_array_T.reshape([width, height])
		g_array = split_g_array_T.reshape([width, height])
		r_array = split_r_array_T.reshape([width, height])
		'''
		print(reshaped_b_array)
		print(reshaped_g_array)
		print(reshaped_r_array)
		'''

		grid_b = b_array.reshape(int(pixels/mesh_pixels),int(mesh_width),int(mesh_height))
		grid_g = g_array.reshape(int(pixels/mesh_pixels),int(mesh_width),int(mesh_height))
		grid_r = r_array.reshape(int(pixels/mesh_pixels),int(mesh_width),int(mesh_height))

		i = 0
		stack = int(pixels/mesh_pixels)
		b_mean = np.array([0])
		g_mean = np.array([0])
		r_mean = np.array([0])

		for i in range(stack):
			b_mean = np.append(b_mean, np.mean(grid_b[i]))
			g_mean = np.append(g_mean, np.mean(grid_g[i]))
			r_mean = np.append(r_mean, np.mean(grid_r[i]))

		b_mean = np.delete(b_mean,0)
		g_mean = np.delete(g_mean,0)
		r_mean = np.delete(r_mean,0) #bgrそれぞれの平均の行列が完成
		'''
		print(b_mean)
		print(g_mean)
		print(r_mean)
		'''

		'''
		mean_array = np.vstack([b_mean, g_mean, r_mean]) #それぞれの行列を1つの行列にまとめている。
		mean_array_T = np.transpose(mean_array)
		'''

		mean_array = np.concatenate([b_mean, g_mean, r_mean])

		bgr_comp = np.vstack([bgr_comp,mean_array])
		

		'''
		with open('Try2_bgr.csv','a') as f:			ここを使えばcsvへの書き込みが可能
			c = csv.writer(f, lineterminator='\n')
			c.writerow(mean_array)
		'''

	bgr_comp = np.delete(bgr_comp,0,axis=0)

	bgr_std = sp.stats.zscore(bgr_comp, axis=0)

	t = np.linspace(0, T, T)
	## plot
	for i in range(rgb * reshaped_height * reshaped_width):
		plt.plot(t, bgr_std[:,i], label="input")
	#plt.plot(t[:T_train], target_data, label="target_data")
	#plt.plot(t[T_train:], train_result, label="predicted")
	plt.legend()
	plt.title("Echo State Network Sin Prediction")
	plt.xlabel("time[ms]")
	plt.ylabel("y(t)")
	plt.show()

if __name__=="__main__":
		main()