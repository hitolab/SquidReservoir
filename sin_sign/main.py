import numpy as np
from input_generator import InputGenerator
from reservoir_network import ReservoirNetWork
import matplotlib.pyplot as plt

T = np.pi * 16
RATIO_TRAIN = 0.6
dt = np.pi * 0.01
AMPLITUDE = 0.9
LEAK_RATE=0.02
NUM_INPUT_NODES = 1
NUM_RESERVOIR_NODES = 150
NUM_OUTPUT_NODES = 1
NUM_TIME_STEPS = int(T/dt)

# example of activator
def ReLU(x):
    return np.maximum(0, x)

def main():
    print(NUM_TIME_STEPS)
    ing = InputGenerator(0,T,NUM_TIME_STEPS)

    train_data = ing.generate_sin()
    num_train = int(len(train_data) * RATIO_TRAIN)
    print(train_data)

    target_data = np.sign(train_data)
    num_target = int(len(target_data) * RATIO_TRAIN)
    print(target_data)



    model = ReservoirNetWork(inputs=train_data, #ReservoirNetwork.pyを参照
        outputs_target = target_data,
        num_input_nodes=NUM_INPUT_NODES, 
        num_reservoir_nodes=NUM_RESERVOIR_NODES, 
        num_output_nodes=NUM_OUTPUT_NODES, 
        leak_rate=LEAK_RATE)

    model.train() # 訓練
    train_result = model.get_train_result() # 訓練の結果を取得

    num_predict = int(len(train_data[num_target:]))
    predict_result = model.predict(num_predict)

    t = np.linspace(0,T,NUM_TIME_STEPS)
    ## plot
    plt.plot(t, train_data, label="inputs")
    plt.plot(t[:num_train], train_result[:num_train], label="trained")
    plt.plot(t[num_target:], predict_result, label="predicted")
    plt.axvline(x=int(T * RATIO_TRAIN), label="end of train", color="green") # border of train and prediction
    plt.legend()
    plt.title("Echo State Network TEST Prediction")
    plt.xlabel("time[ms]")
    plt.ylabel("y(t)")
    plt.show()

if __name__=="__main__":
    main()