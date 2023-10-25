import os
import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import MinMaxScaler
from tensorflow import keras

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

    # Define model
    model = keras.models.Sequential([
        keras.layers.Input(shape=(SEQUENCE_LENGTH, 1)),
        keras.layers.Conv1D(filters=64, kernel_size=3, activation='relu', padding='same'),
        keras.layers.Dense(1)
    ])

    # Compile model
    model.compile(optimizer='adam', loss='mse', metrics=['mae'])

    # Train model
    model.fit(X_train, y_train, epochs=10, batch_size=32, validation_data=(X_test, y_test))

    # Evaluate model
    model.evaluate(X_test, y_test)
