import csv
import numpy as np

with open('Try2_bgr.csv','r') as f:
	reader = csv.reader(f)
	input_array = np.array([0])
	for line in reader:
		input_array = np.append(input_array, line)

input_array = np.delete(input_array,0)
print(input_array)
