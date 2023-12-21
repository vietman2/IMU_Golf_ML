# IMU_MLDL

## 1. Noise Filter Module

As you have suggested, we have re-trainined the autoencoder models so that each model filters 1 axis data instead of filtering them simultaneously.

We have also created a simple custom padding layer so that the model deals better with initial and final values, which were our concerns beforehand.

### How to use model to filter data

The how_to_use.ipynb file is an example of how to use the model.
The following is a written description of how to use the model.

1. load the model
2. load data
3. normalize data
    - accelerometer: [-16, 16] -> [-1, 1]
    - gyroscope: [-2000, 2000] -> [-1, 1]
4. reshape data to fit the model: (1, 1000, 1)
5. convert to tensor
6. input data into model to filter
7. check result
8. multiply 16 for accelerometer and 2000 for gyroscope again, if needed

### Accelerometer

For filtering accelerometer data, we have suggested you with 2 autoencoder models for each axis. This is because accelerometer data are very noisy, and we weren't sure if filtering these data are actually helpful (since some data points that seem "noisy" might actually not be noise, but instead are important data points for calculation)

One model is a simple configuration of Conv2D layers, and the other is a more complex model with more layers.

The simpler model doesn't filter noise very much, but is a more consistent one.

The more complex model filters more noise, but it sometimes shows low accuracy in special cases.

### Gyroscope

To filter gyroscope data, we have used the same layer configuration as the simpler model used to filter the accelerometer data, and it shows impressive performance.

### Sample Output (noise filter)

The sample_output.csv file is a sample csv file with the output data from the models.
The columns are as follows:
    - frame: = index
    - {accel/gyro}_x_input: the input data
    - {accel/gyro}_x_given: the given model answer data in the .csv files we are provided with
    - accel_x_output: the output data points from the complex model
    - accel_x_simple_output: the output data points from the simple model
    - gyro_x_output: the output data points from the model

### The Model Configuration (noise filter)

We have also attached the sample ipynb files of the models that we've built so that you can check.

## 2. Labelling Module

As we have reported last time, we have trained 2 different models: 1 RNN based and 1 GRU based.

### Notes

- We have used the filtered data points given in the .csv files in the logRaws directory that we are given.
- We have not normalized input data. There are some reasons for this:
  - First, it seemed weird to us that these filtered data have max/min values that are larger/smaller than the sensor limits, in the accel data points. (accel values larger than 16, smaller than -16)
  - Second, we decided to train the model without normalizing to see if the models and parameters we chose were appropriate.
  - Third, the models took much longer time and resources to train compared to the other models we have trained, so we decided to revisit this model later on. However, the models still showed >90% accuracy even without normalization, so we have decided to leave it as it is.

### How to use model to label data

The how_to_use.ipynb is an example of how to use the model.
The following is a written description of how to use the model.

1. load the model
2. load data
3. reshape data to fit the model: (1, 1000, 6)
4. input data into model to label
5. check result

### Interpreting the result

The output shape is (1, 1000, 5)
Each row shows the probability of being each state.
The states are the same as what we are given with:
    - 0 = NOT SWING
    - 1 = ADDRESS
    - 2 = SWING (back & down)
    - 3 = IMPACT
    - 4 = FINISH

So for example, if the first row data is [0.5349417, 0.39646626, 0.29561636, 0.26412126, 0.31440845], we can interpret the data as following
    - The probability of this time frame being "NOT SWING" = 53.49%
    - The probability of this time frame being "ADDRESS" = 39.65%
    - The probability of this time frame being "SWING" = 29.56%
    - The probability of this time frame being "IMPACT" = 26.41%
    - The probability of this time frame being "FINISH" = 31.44%

We can interpret that the column with the highest probability from the row is the prediction of the phase of the swing made by the model.

### Evaluation

Now, although the model shows high accuracy, we need to evaluate this result critically.
Both models show pretty good detection abilities, however they both tend to not predict the "IMPACT" phase. This is mainly because, there is only 1 "IMPACT" phase in each input data given, so the probability is predicted to be very low naturally. So, the model's prediction (based on our formula of prediction) mostly goes straight from phase 2 to 4. Either re-training of the model to fine tune this, or post-processing is required.

### Sample Output (labelling)

The sample_output_rnn.csv and sample_output_gru files are sample csv files with the output data from the models.

### The Model Configuration (labelling)

We have also attached the sample ipynb files of the models that we've built so that you can check.
