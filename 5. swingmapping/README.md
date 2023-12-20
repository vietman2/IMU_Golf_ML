# Golf Ball Flight Prediction

## Overview

This repository contains code for predicting golf ball flight parameters using a Long Short-Term Memory (LSTM) model. The system takes filtered and labeled data as input, calculates 10 shot parameters, and visualizes the golf ball flight. The key components include data preprocessing, a custom loss function, and the definition/training of an LSTM model.

## Modules

1. **match_data:**
   - Removes unmatched files as the output and filtered datasets may not align.

2. **data_preprocessing:**
   - Filters and preprocesses relevant swing data (swing stage, acceleration, gyro data) to train the swing metrics model.

## Technology Stack

- Python
- Keras

## Problems

- **Weird Swing Data:**
  - Swing data with a time duration of 10 seconds made it challenging to map time series data to all 10 output parameters simultaneously. As a solution, the output parameters were reduced to 6, with the other 4 generated using traditional rule-based algorithms.

- **Negative Output Values:**
  - To accommodate negative output values, a custom Keras loss function, `percentage_difference_loss`, was created to ensure correct model training.

- **Non-Normalized Data:**
  - Non-normalized data led to high relative loss values during training. Normalization was implemented, assuming a theoretical maximum value to prevent abnormal outputs for input parameters exceeding this value.

## Usage

1. **File Directories:**
   - Update `input_directory` and `output_directory` variables in the code with the appropriate file paths.

2. **Preprocess Data:**
   - Run `preprocess_all_files()` to preprocess data for all files in the input directory.

3. **Train the Model:**
   - Adjust hyperparameters in the LSTM model (e.g., number of epochs) as needed.
   - Run the code to train the model using preprocessed data.

4. **Evaluate and Save Model:**
   - Evaluate the model on the test set and view the score.
   - Save the trained model using TensorFlow SavedModel format.

## Notes

- Ensure that data preprocessing aligns with model requirements.
- Monitor training for overfitting or underfitting.

Feel free to customize the code and instructions based on your specific requirements and use case.
