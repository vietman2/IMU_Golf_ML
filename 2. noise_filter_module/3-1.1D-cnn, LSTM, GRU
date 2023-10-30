# Improved the effectiveness of training by dividing the dataset into three categories: 
# train, validation, and test, as opposed to the previous practice of using only two categories, train and test. 
# At the bottom of the code in the model section, made a change by adding LSTM and GRU models, which are evaluated as useful for time series analysis,
# in addition to Conv1D. then select the model with the highest accuracy among the three.

import os
import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import MinMaxScaler
from tensorflow import keras
from keras.models import clone_model

# Constants
DATA_PATH = '../data/Raw/logRaws/'
SEQUENCE_LENGTH = 1000  

# Load and preprocess data
all_files = os.listdir(DATA_PATH)
data_list = []

scaler = MinMaxScaler()

for file in all_files:
    file_path = os.path.join(DATA_PATH, file)
    data = pd.read_csv(file_path, usecols=[16, 21]).dropna().values  
    data_scaled = scaler.fit_transform(data)
    
    # Skip files with insufficient data
    if len(data_scaled) < SEQUENCE_LENGTH:  
        continue
    
    # Ensure that data is correctly shaped
    if data_scaled.shape != (SEQUENCE_LENGTH, 2):
        print(f"Unexpected shape for file {file}: {data_scaled.shape}. Skipping.")
        continue
    
    data_list.append(data_scaled)

# Convert to NumPy array
data_array = np.array(data_list)

# Check array shape
if len(data_array.shape) != 3:
    print(f"Unexpected shape for data_array: {data_array.shape}. Expected (n_samples, SEQUENCE_LENGTH, n_features).")
else:
    # Separate inputs and outputs
    X = data_array[:, :, 0].reshape(-1, SEQUENCE_LENGTH, 1)
    y = data_array[:, :, 1].reshape(-1, SEQUENCE_LENGTH, 1)

    # Split into training and test sets
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

    # Define Conv1D model
    model1 = keras.models.Sequential([
        keras.layers.Input(shape=(SEQUENCE_LENGTH, 1)),
        keras.layers.Conv1D(filters=64, kernel_size=3, activation='relu', padding='same'),
        keras.layers.Dense(1)
    ])

    # Define LSTM model
    model2 = keras.models.Sequential([
        keras.layers.Input(shape=(SEQUENCE_LENGTH, 1)),
        keras.layers.LSTM(64, return_sequences=True),
        keras.layers.Dropout(0.2),
        keras.layers.LSTM(32),
        keras.layers.Dense(1)
    ])

    # Define GRU model
    model3 = keras.models.Sequential([
        keras.layers.Input(shape=(SEQUENCE_LENGTH, 1)),
        keras.layers.GRU(64, return_sequences=True),
        keras.layers.Dropout(0.2),
        keras.layers.GRU(32),
        keras.layers.Dense(1)
    ])

    # Clone models for comparison
    model1_clone = clone_model(model1)
    model2_clone = clone_model(model2)
    model3_clone = clone_model(model3)

    # Compile models
    model1_clone.compile(optimizer='adam', loss='mse', metrics=['mae'])
    model2_clone.compile(optimizer='adam', loss='mse', metrics=['mae'])
    model3_clone.compile(optimizer='adam', loss='mse', metrics=['mae'])

    # Train models
    history1 = model1_clone.fit(X_train, y_train, epochs=10, batch_size=32, validation_data=(X_test, y_test))
    history2 = model2_clone.fit(X_train, y_train, epochs=10, batch_size=32, validation_data=(X_test, y_test))
    history3 = model3_clone.fit(X_train, y_train, epochs=10, batch_size=32, validation_data=(X_test, y_test))

    # Evaluate models
    loss1, mae1 = model1_clone.evaluate(X_test, y_test)
    loss2, mae2 = model2_clone.evaluate(X_test, y_test)
    loss3, mae3 = model3_clone.evaluate(X_test, y_test)

    # Choose the better model
    if min(loss1, loss2, loss3) == loss1:
        model = model1
    elif min(loss1, loss2, loss3) == loss2:
        model = model2
    else:
        model = model3

    # Compile the better model
    model.compile(optimizer='adam', loss='mse', metrics=['mae'])

    # Train the better model
    model.fit(X_train, y_train, epochs=10, batch_size=32, validation_data=(X_test, y_test))

    # Evaluate the better model
    model.evaluate(X_test, y_test)
