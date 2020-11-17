import numpy as np
import scipy.stats as sp
from reservoir_network import ReservoirNetWork
from generate_bgr import ImageProcessing
import matplotlib.pyplot as plt
import csv

################################
####以下の値を入力してください。####
################################

movie_second = 15	#何秒の動画か
fps = 1				#１秒間に何フレームの画像を作成したか
rgb = 3				#RGBの次元数(変える必要なし)
width = 60			#横方向に画像を何分割するか(割り切れる値である必要性がある。)
height = 80			#縦方向に画像を何分割するか(割り切れる値である必要性がある。)
for_times = 3		#学習を何周させるか(2^for_times回数)
Sample_picture = "Try2_aiueo_volhalf/0004.png"		#連番画像のうち、いずれか一つの画像を指定
File = "Try2_aiueo_volhalf/*.png"					#連番画像フォルダを指定

################################

T_train = movie_second * fps * pow(2,for_times)
T_result = movie_second * fps * pow(2,for_times)
T = T_train + T_result
dt = 1
AMPLITUDE = 0.9
LEAK_RATE=0.02
NUM_INPUT_NODES = width * height * rgb
NUM_RESERVOIR_NODES = 100
NUM_OUTPUT_NODES = 1
NUM_TIME_STEPS = int(T/dt)


def main():

	input_data = ImageProcessing.generate_bgr(width, height, Sample_picture, File) #画像を何個に分割するか(横、縦)
	input_std = sp.stats.zscore(input_data, axis=0)

	for i in range(for_times):
		input_std = np.vstack([input_std, input_std])

	target_data = np.array([1,1,1,2,2,2,3,3,3,4,4,4,5,5,5])
	for i in range(for_times):
		target_data = np.hstack([target_data,target_data])
	target_data = target_data.reshape(-1,1) #reshapeの-1による指定されると、推測して決定される。

	test_std = input_std[[3,4,5,9,10,11,0,1,2,6,7,8,12,13,14], :]
	for i in range(for_times):
		test_std = np.vstack([test_std, test_std])

	test_target = np.array([2,2,2,4,4,4,1,1,1,3,3,3,5,5,5])
	for i in range(for_times):
		test_target = np.hstack([test_target, test_target])
	test_target = test_target.reshape(-1,1) #reshapeの-1による指定されると、推測して決定される。

	model = ReservoirNetWork(inputs = input_std, #ReservoirNetwork.pyを参照
		target_data = target_data,
		test_data = test_std,
		num_input_nodes=NUM_INPUT_NODES, 
		num_reservoir_nodes=NUM_RESERVOIR_NODES, 
		num_output_nodes=NUM_OUTPUT_NODES, 
		leak_rate=LEAK_RATE)

	model.train() # 訓練

	train_result = model.get_train_result()	#訓練の結果を取得
	test_result = model.get_test_result() 	#テストデータを通した結果を取得

	t = np.linspace(0, T, NUM_TIME_STEPS)
	## plot
	plt.plot(t[:T_train], target_data, label="target_data")
	plt.plot(t[:T_train], train_result, label="trained")
	plt.plot(t[T_train:], test_target, label="test_target")
	plt.plot(t[T_train:], test_result, label="test_result")
	plt.legend()
	plt.title("SquidReservoir")
	plt.xlabel("time[ms]")
	plt.ylabel("a,i,u,e,o = 1, 2, 3, 4, 5")
	plt.show()

if __name__=="__main__":
		main()