import os
import pandas as pd
import json
import numpy as np

# File directories 
input_directory = r'C:\Users\James\Desktop\Raw\logRaws'
output_directory = r'C:\Users\James\Desktop\Raw\userInfo'


# Preprocess data for a single file
def preprocess_single_file(input_file_path, output_file_path):

    # Load CSV data and filter rows where Swing Stage is not 0 (swing stage != 0, 3 fltrd_accel, 3 fltrd_gyro)
    input_data = pd.read_csv(input_file_path)
    input_data = input_data[input_data.iloc[:, 3] != 0]
    input_data = input_data.iloc[:, [3, 19, 20, 21, 25, 26, 27]]

    X = np.array(input_data.values)
    # Load JSON data -> If output is not available, skip
    with open(output_file_path, 'r') as json_file:
        try:
            output_data = json.load(json_file)
            Y = np.array(output_data['ShotResult'])
        except KeyError as e:
            return None, None

    return X, Y


def preprocess_all_files():
    
    all_data = []

    # Iterate through all files
    for input_file in os.listdir(input_directory):

        # Construct the output file path based on the common prefix
        common_prefix = '_'.join(input_file.split('_')[:-1]) + '_'
        output_file = common_prefix + 'userinfo.json'
        output_file_path = os.path.join(output_directory, output_file)

        # Construct the input file path
        input_file_path = os.path.join(input_directory, input_file)

        # Preprocess the data for the current file
        X, Y = preprocess_single_file(input_file_path, output_file_path)
    
        # Append the preprocessed data to the list if both values exist
        if X is not None and Y is not None:
            all_data.append((X, Y))


    return all_data
