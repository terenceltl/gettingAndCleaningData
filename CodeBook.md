## Code book for the Tidy Data Set Created in the Course Project for the Getting and Cleaning Data Coursera Course

This cook book document aims to describe what variables are in the tidy data set.

The tidy data set was derived from the "Human Activity Recognition Using Smartphones Data Set", which are data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description of the experimental design and the raw data set itself can be found here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original raw data set used for generating this tidy data set can be downloaded here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Please refer to the README.md file in this repo on how the tidy data set was created, and the README.txt and features_info.txt files coming with the original data set for the experimental design.

Some points to note:

* The variable names conform to the CamelCase convetion starting with a lower case letter
* Though obvious to some, some explanation of the short form / keywords used in the variable names:
    * time: time domain signals that were captured at a constant rate of 50 Hz
    * freq: frequency domain signals produced by Fast Fourier Transform
    * Body: the body component of the signals separated using a low pass Butterworth filter with a corner frequency of 0.3 Hz
    * Gravity: the gravity component of the signals separated using a low pass Butterworth filter with a corner frequency of 0.3 Hz
    * Acc: signals coming from the accelerometer
    * Gyro: signals coming from the gyroscope
    * Jerk: Jerk signals obtained by deriving the body linear acceleration or angular velocity in time
    * Mag: the magnitude of the three-dimensional signals, calculated using the Euclidean norm
    * X,Y,Z: the 3-axial signals in the X, Y and Z directions
    * Mean: the mean value estimated from these signals
    * StdDev: the standard deviation estimated from these signals
* Finally, it should be noted that the values in the tidy data set are the group-wise mean (by both subject and activity) of the values in the original raw data set. Well, yes, so they are mean of mean values and mean of standard deviation values.


| Variable name | Class | Range of values / code set | Description |
| --- | --- | --- | --- |
| subject |  |[-1,1]  |  |
| activity |  |[-1,1]  |  |
| timeBodyAccMeanX |  |[-1,1]  |  |
| timeBodyAccMeanY |  |[-1,1]  |  |
| timeBodyAccMeanZ |  |[-1,1]  |  |
| timeBodyAccStdDevX |  |[-1,1]  |  |
| timeBodyAccStdDevY |  |[-1,1]  |  |
| timeBodyAccStdDevZ |  |[-1,1]  |  |
| timeGravityAccMeanX |  |[-1,1]  |  |
| timeGravityAccMeanY |  |[-1,1]  |  |
| timeGravityAccMeanZ |  |[-1,1]  |  |
| timeGravityAccStdDevX |  |[-1,1]  |  |
| timeGravityAccStdDevY |  |[-1,1]  |  |
| timeGravityAccStdDevZ |  |[-1,1]  |  |
| timeBodyAccJerkMeanX |  |[-1,1]  |  |
| timeBodyAccJerkMeanY |  |[-1,1]  |  |
| timeBodyAccJerkMeanZ |  |[-1,1]  |  |
| timeBodyAccJerkStdDevX |  |[-1,1]  |  |
| timeBodyAccJerkStdDevY |  |[-1,1]  |  |
| timeBodyAccJerkStdDevZ |  |[-1,1]  |  |
| timeBodyGyroMeanX |  |[-1,1]  |  |
| timeBodyGyroMeanY |  |[-1,1]  |  |
| timeBodyGyroMeanZ |  |[-1,1]  |  |
| timeBodyGyroStdDevX |  |[-1,1]  |  |
| timeBodyGyroStdDevY |  |[-1,1]  |  |
| timeBodyGyroStdDevZ |  |[-1,1]  |  |
| timeBodyGyroJerkMeanX |  |[-1,1]  |  |
| timeBodyGyroJerkMeanY |  |[-1,1]  |  |
| timeBodyGyroJerkMeanZ |  |[-1,1]  |  |
| timeBodyGyroJerkStdDevX |  |[-1,1]  |  |
| timeBodyGyroJerkStdDevY |  |[-1,1]  |  |
| timeBodyGyroJerkStdDevZ |  |[-1,1]  |  |
| timeBodyAccMagMean |  |[-1,1]  |  |
| timeBodyAccMagStdDev |  |[-1,1]  |  |
| timeGravityAccMagMean |  |[-1,1]  |  |
| timeGravityAccMagStdDev |  |[-1,1]  |  |
| timeBodyAccJerkMagMean |  |[-1,1]  |  |
| timeBodyAccJerkMagStdDev |  |[-1,1]  |  |
| timeBodyGyroMagMean |  |[-1,1]  |  |
| timeBodyGyroMagStdDev |  |[-1,1]  |  |
| timeBodyGyroJerkMagMean |  |[-1,1]  |  |
| timeBodyGyroJerkMagStdDev |  |[-1,1]  |  |
| freqBodyAccMeanX |  |[-1,1]  |  |
| freqBodyAccMeanY |  |[-1,1]  |  |
| freqBodyAccMeanZ |  |[-1,1]  |  |
| freqBodyAccStdDevX |  |[-1,1]  |  |
| freqBodyAccStdDevY |  |[-1,1]  |  |
| freqBodyAccStdDevZ |  |[-1,1]  |  |
| freqBodyAccJerkMeanX |  |[-1,1]  |  |
| freqBodyAccJerkMeanY |  |[-1,1]  |  |
| freqBodyAccJerkMeanZ |  |[-1,1]  |  |
| freqBodyAccJerkStdDevX |  |[-1,1]  |  |
| freqBodyAccJerkStdDevY |  |[-1,1]  |  |
| freqBodyAccJerkStdDevZ |  |[-1,1]  |  |
| freqBodyGyroMeanX |  |[-1,1]  |  |
| freqBodyGyroMeanY |  |[-1,1]  |  |
| freqBodyGyroMeanZ |  |[-1,1]  |  |
| freqBodyGyroStdDevX |  |[-1,1]  |  |
| freqBodyGyroStdDevY |  |[-1,1]  |  |
| freqBodyGyroStdDevZ |  |[-1,1]  |  |
| freqBodyAccMagMean |  |[-1,1]  |  |
| freqBodyAccMagStdDev |  |[-1,1]  |  |
| freqBodyAccJerkMagMean |  |[-1,1]  |  |
| freqBodyAccJerkMagStdDev |  |[-1,1]  |  |
| freqBodyGyroMagMean |  |[-1,1]  |  |
| freqBodyGyroMagStdDev |  |[-1,1]  |  |
| freqBodyGyroJerkMagMean |  |[-1,1]  |  |
| freqBodyGyroJerkMagStdDev |  |[-1,1]  |  |

