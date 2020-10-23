import cv2
import csv
import numpy as np
import glob

files = glob.glob("Try1_after1/*.tif")


for file in files:
	bgr_array = cv2.imread(file)#読み込み
	pixels = 1600*1200
	mesh = 400*400
	side = 400

	reshaped_bgr_array = bgr_array.reshape(pixels, 3)

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

	b_array = split_b_array_T.reshape([1600, 1200])
	g_array = split_g_array_T.reshape([1600, 1200])
	r_array = split_r_array_T.reshape([1600, 1200])
	'''
	print(reshaped_b_array)
	print(reshaped_g_array)
	print(reshaped_r_array)
	'''

	grid_b = b_array.reshape(int(pixels/mesh),side,side)
	grid_g = g_array.reshape(int(pixels/mesh),side,side)
	grid_r = r_array.reshape(int(pixels/mesh),side,side)

	i = 0
	stack = int(pixels/mesh)
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

	#print(mean_array_T)


	with open('Try1_bgr_1.csv','a') as f:
		c = csv.writer(f, lineterminator='\n')
		c.writerow(mean_array)
