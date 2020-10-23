import csv

with open('Try1_bgr.csv','r') as f:
	reader = csv.reader(f)
	for line in reader:
		print(line)