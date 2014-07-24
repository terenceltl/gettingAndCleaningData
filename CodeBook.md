## Code book for the Tidy Data Set Created in the Course Project for the Getting and Cleaning Data Coursera Course

This cook book document aims to describe the variables in the tidy data set.

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
    * Acc: signals coming from the accelerometer, linear acceleration
    * Gyro: signals coming from the gyroscope, angular velocity
    * Jerk: Jerk signals obtained by deriving the body linear acceleration or angular velocity in time
    * Mag: the magnitude of the three-dimensional signals, calculated using the Euclidean norm
    * X,Y,Z: the 3-axial signals in the X, Y and Z directions
    * Mean: the mean value estimated from these signals
    * StdDev: the standard deviation estimated from these signals
* Finally, it should be noted that the numeric values in the tidy data set are the group-wise mean (by both subject and activity) of the values in the original raw data set. Well, yes, so they are mean of mean values and mean of standard deviation values.


| Variable name | Class | Range of values | Description of the variable            |
| --- | --- | --- | --- |
| subject |int  |1 to 30  |Identifies the subject who performed the activity  |
| activity |chr  |LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS  |Identifies the activity performed by the subject  |
| timeBodyAccMeanX |num  |[-1,1]  |Mean value of the time domain body acceleration signals in the X axis  |
| timeBodyAccMeanY |num  |[-1,1]  |Mean value of the time domain body acceleration signals in the Y axis  |
| timeBodyAccMeanZ |num  |[-1,1]  |Mean value of the time domain body acceleration signals in the Z axis  |
| timeBodyAccStdDevX |num  |[-1,1]  |Standard deviation value of the time domain body acceleration signals in the X axis  |
| timeBodyAccStdDevY |num  |[-1,1]  |Standard deviation value of the time domain body acceleration signals in the Y axis  |
| timeBodyAccStdDevZ |num  |[-1,1]  |Standard deviation value of the time domain body acceleration signals in the Z axis  |
| timeGravityAccMeanX |num  |[-1,1]  |Mean value of the time domain gravity acceleration signals in the X axis  |
| timeGravityAccMeanY |num  |[-1,1]  |Mean value of the time domain gravity acceleration signals in the Y axis  |
| timeGravityAccMeanZ |num  |[-1,1]  |Mean value of the time domain gravity acceleration signals in the Z axis  |
| timeGravityAccStdDevX |num  |[-1,1]  |Standard deviation value of the time domain gravity acceleration signals in the X axis  |
| timeGravityAccStdDevY |num  |[-1,1]  |Standard deviation value of the time domain gravity acceleration signals in the Y axis  |
| timeGravityAccStdDevZ |num  |[-1,1]  |Standard deviation value of the time domain gravity acceleration signals in the Z axis  |
| timeBodyAccJerkMeanX |num  |[-1,1]  |Mean value of the time domain body acceleration Jerk signals in the X axis  |
| timeBodyAccJerkMeanY |num  |[-1,1]  |Mean value of the time domain body acceleration Jerk signals in the Y axis  |
| timeBodyAccJerkMeanZ |num  |[-1,1]  |Mean value of the time domain body acceleration Jerk signals in the Z axis  |
| timeBodyAccJerkStdDevX |num  |[-1,1]  |Standard deviation value of the time domain body acceleration Jerk signals in the X axis  |
| timeBodyAccJerkStdDevY |num  |[-1,1]  |Standard deviation value of the time domain body acceleration Jerk signals in the Y axis  |
| timeBodyAccJerkStdDevZ |num  |[-1,1]  |Standard deviation value of the time domain body acceleration Jerk signals in the Z axis  |
| timeBodyGyroMeanX |num  |[-1,1]  |Mean value of the time domain body angular velocity signals in the X axis  |
| timeBodyGyroMeanY |num  |[-1,1]  |Mean value of the time domain body angular velocity signals in the Y axis  |
| timeBodyGyroMeanZ |num  |[-1,1]  |Mean value of the time domain body angular velocity signals in the Z axis  |
| timeBodyGyroStdDevX |num  |[-1,1]  |Standard deviation value of the time domain body angular velocity signals in the X axis  |
| timeBodyGyroStdDevY |num  |[-1,1]  |Standard deviation value of the time domain body angular velocity signals in the Y axis  |
| timeBodyGyroStdDevZ |num  |[-1,1]  |Standard deviation value of the time domain body angular velocity signals in the Z axis  |
| timeBodyGyroJerkMeanX |num  |[-1,1]  |Mean value of the time domain body angular velocity Jerk signals in the X axis  |
| timeBodyGyroJerkMeanY |num  |[-1,1]  |Mean value of the time domain body angular velocity Jerk signals in the Y axis  |
| timeBodyGyroJerkMeanZ |num  |[-1,1]  |Mean value of the time domain body angular velocity Jerk signals in the Z axis  |
| timeBodyGyroJerkStdDevX |num  |[-1,1]  |Standard deviation value of the time domain body angular velocity Jerk signals in the X axis  |
| timeBodyGyroJerkStdDevY |num  |[-1,1]  |Standard deviation value of the time domain body angular velocity Jerk signals in the Y axis  |
| timeBodyGyroJerkStdDevZ |num  |[-1,1]  |Standard deviation value of the time domain body angular velocity Jerk signals in the Z axis  |
| timeBodyAccMagMean |num  |[-1,1]  |Mean value of the magnitude of the time domain body acceleration signals  |
| timeBodyAccMagStdDev |num  |[-1,1]  |Standard deviation value of the magnitude of the time domain body acceleration signals  |
| timeGravityAccMagMean |num  |[-1,1]  |Mean value of the magnitude of the time domain gravity acceleration signals  |
| timeGravityAccMagStdDev |num  |[-1,1]  |Standard deviation value of the magnitude of the time domain gravity acceleration signals  |
| timeBodyAccJerkMagMean |num  |[-1,1]  |Mean value of the magnitude of the time domain body acceleration Jerk signals  |
| timeBodyAccJerkMagStdDev |num  |[-1,1]  |Standard deviation value of the magnitude of the time domain body acceleration Jerk signals  |
| timeBodyGyroMagMean |num  |[-1,1]  |Mean value of the magnitude of the time domain body angular velocity signals  |
| timeBodyGyroMagStdDev |num  |[-1,1]  |Standard deviation value of the magnitude of the time domain body angular velocity signals  |
| timeBodyGyroJerkMagMean |num  |[-1,1]  |Mean value of the magnitude of the time domain body angular velocity Jerk signals  |
| timeBodyGyroJerkMagStdDev |num  |[-1,1]  |Standard deviation value of the magnitude of the time domain body angular velocity Jerk signals  |
| freqBodyAccMeanX |num  |[-1,1]  |Mean value of the frequency domain body acceleration signals in the X axis  |
| freqBodyAccMeanY |num  |[-1,1]  |Mean value of the frequency domain body acceleration signals in the Y axis  |
| freqBodyAccMeanZ |num  |[-1,1]  |Mean value of the frequency domain body acceleration signals in the Z axis  |
| freqBodyAccStdDevX |num  |[-1,1]  |Standard deviation value of the frequency domain body acceleration signals in the X axis  |
| freqBodyAccStdDevY |num  |[-1,1]  |Standard deviation value of the frequency domain body acceleration signals in the Y axis  |
| freqBodyAccStdDevZ |num  |[-1,1]  |Standard deviation value of the frequency domain body acceleration signals in the Z axis  |
| freqBodyAccJerkMeanX |num  |[-1,1]  |Mean value of the frequency domain body acceleration Jerk signals in the X axis  |
| freqBodyAccJerkMeanY |num  |[-1,1]  |Mean value of the frequency domain body acceleration Jerk signals in the Y axis  |
| freqBodyAccJerkMeanZ |num  |[-1,1]  |Mean value of the frequency domain body acceleration Jerk signals in the Z axis  |
| freqBodyAccJerkStdDevX |num  |[-1,1]  |Standard deviation value of the frequency domain body acceleration Jerk signals in the X axis  |
| freqBodyAccJerkStdDevY |num  |[-1,1]  |Standard deviation value of the frequency domain body acceleration Jerk signals in the Y axis  |
| freqBodyAccJerkStdDevZ |num  |[-1,1]  |Standard deviation value of the frequency domain body acceleration Jerk signals in the Z axis  |
| freqBodyGyroMeanX |num  |[-1,1]  |Mean value of the frequency domain body angular velocity signals in the X axis  |
| freqBodyGyroMeanY |num  |[-1,1]  |Mean value of the frequency domain body angular velocity signals in the Y axis  |
| freqBodyGyroMeanZ |num  |[-1,1]  |Mean value of the frequency domain body angular velocity signals in the Z axis  |
| freqBodyGyroStdDevX |num  |[-1,1]  |Standard deviation value of the frequency domain body angular velocity signals in the X axis  |
| freqBodyGyroStdDevY |num  |[-1,1]  |Standard deviation value of the frequency domain body angular velocity signals in the Y axis  |
| freqBodyGyroStdDevZ |num  |[-1,1]  |Standard deviation value of the frequency domain body angular velocity signals in the Z axis  |
| freqBodyAccMagMean |num  |[-1,1]  |Mean value of the magnitude of the frequency domain body acceleration signals  |
| freqBodyAccMagStdDev |num  |[-1,1]  |Standard deviation value of the magnitude of the frequency domain body acceleration signals  |
| freqBodyAccJerkMagMean |num  |[-1,1]  |Mean value of the magnitude of the frequency domain body acceleration Jerk signals  |
| freqBodyAccJerkMagStdDev |num  |[-1,1]  |Standard deviation value of the magnitude of the frequency domain body acceleration Jerk signals  |
| freqBodyGyroMagMean |num  |[-1,1]  |Mean value of the magnitude of the frequency domain body angular velocity signals  |
| freqBodyGyroMagStdDev |num  |[-1,1]  |Standard deviation value of the magnitude of the frequency domain body angular velocity signals  |
| freqBodyGyroJerkMagMean |num  |[-1,1]  |Mean value of the magnitude of the frequency domain body angular velocity Jerk signals  |
| freqBodyGyroJerkMagStdDev |num  |[-1,1]  |Standard deviation value of the magnitude of the frequency domain body angular velocity Jerk signals  |

