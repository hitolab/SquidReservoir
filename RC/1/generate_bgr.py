import cv2
import csv
import numpy as np
import glob

class Image Processing:

	def generate_bgr(self, reshaped_width = 4, reshaped_height = 6)

		files = glob.glob("Try2_aiueo_volhalf/*.png")

		for file in files:
			img = cv2.imread(file)#読み込み
			width, height, channel = img.shape
			pixels = width * height
			reshaped_width = 4
			reshaped_height = 6
			mesh_width = width/reshaped_width
			mesh_height = height/reshaped_height
			mesh = mesh_width * mesh_height

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

			grid_b = b_array.reshape(int(pixels/mesh),int(mesh_height),int(mesh_width))
			grid_g = g_array.reshape(int(pixels/mesh),int(mesh_height),int(mesh_width))
			grid_r = r_array.reshape(int(pixels/mesh),int(mesh_height),int(mesh_width))

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

			'''
			with open('Try2_bgr.csv','a') as f:
				c = csv.writer(f, lineterminator='\n')
				c.writerow(mean_array)
			'''

			return mean_array