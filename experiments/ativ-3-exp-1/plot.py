#!/usr/bin/env python3
"""Script to plot graphs from CSV"""
import sys, os.path
import seaborn as sns
import numpy as np
from pandas import DataFrame, Series
from matplotlib import pyplot as plt

sns.set(color_codes=True)

def user_input():
    """Parse the user input"""
    if(len(sys.argv) != 2):
        print("Please, inform the CSV input file.")
        sys.exit(1)
    return sys.argv[1]

def prefix(file_path):
    """Return the prefix of the filename"""
    return os.path.splitext(file_path)[0]

def histogram(y_axis, name=""):
    """Plot Histogram"""
    values = Series(y_axis, name="Time of Execution (s)")
    sns.histplot(data=values, kde=True)
    filename = (name + "_histogram.png")
    print("Saving ", filename)
    plt.savefig(filename)
    # plt.show()

def linear_regression(y_axis, name=""):
    """Plot Linear Regression"""
    x_axis = np.arange(1, len(y_axis)+1)
    data_merge = {"Iteration": x_axis, "Time of Execution (s)": y_axis}
    data_frame = DataFrame(data=data_merge)
    sns.lmplot(x="Iteration", y="Time of Execution (s)",
               data=data_frame, ci=95)
    filename = (name + "_linear_regression.png")
    print("Saving ", filename)
    plt.savefig(filename)
    # plt.show()

if __name__ == "__main__":
    try:
        file_path = user_input()
        y_axis = np.genfromtxt(file_path, delimiter="\n")
        file_prefix = prefix(file_path)
        histogram(y_axis, file_prefix)
        linear_regression(y_axis, file_prefix)
    except KeyboardInterrupt as e:
        print(e.__str__)
    except OSError as e:
        print("[ERROR]:", e)
