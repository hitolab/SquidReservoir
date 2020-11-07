import numpy as np
import scipy.stats as sp
from generate_bgr import ImageProcessing
import csv

def main():

	input_data = ImageProcessing.generate_bgr(3, 4) #画像を何個に分割するか(横、縦)
	input_std = sp.stats.zscore(input_data, axis=1)
	

if __name__=="__main__":
		main()