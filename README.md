## Course Project for the Getting and Cleaning Data Coursera Course

### Background

A tidy data set was created as requested according to instructions given in the course project. For reader who are not fellow student and would like to know more about this course, please refer to:

https://www.coursera.org/course/getdata

This README.md file serves to give the reader (you) an overview of what the data set is about, and how it was created, etc.

The tidy data set was derived from the "Human Activity Recognition Using Smartphones Data Set", which are data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description of the experimental design and the raw data set itself can be found here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original raw data set used for generating this tidy data set can be downloaded here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The process of derving the tidy data set from the original raw data set was automated using an R script *run_analysis.R*. The rest of this README.md will describe what files are included along with the tidy data set and the process of how it was created.

### The data set includes the following files

- README.md: This file :)
- run_analysis.R : An R script that convert the orignal raw data set into a tidy data set and export it to a text file *tidyDataSetMeanValues.txt*
- tidyDataSetMeanValues.txt: *The* tidy data set. This was also uploaded to Coursera's submission page and was included in this repo for convenience. This data set has 180 obervations (rows) and 68 variables (columns, to be described in the code book).
- codeBook.md: The code book that describes the naming convention of the variables and the variables themselves.
 
### The original raw data set and how it was converted into the tidy data set

For full details on the original data set, please refer back to its own documentation files, such as README.txt and features_info.txt, that came with the original data set.

In short, the original raw data set consists of two data sets, the train set and the test set, which contains 7352 and 2947 obervations of 561 variables (the "features" as described in the original documentation) respectively. Together these record the data collected from 30 subjects performing 6 types of activities. As such the train and test set can be combined into a data set of 10299 observations of 563 variables, including the subject and activity as the 2 extra variables.

This original raw data set is converted into the tidy data set by the R script *run_analysis.R* as described below. There are also comments inside the R script to explain each steps.

1. Merges the training and the test sets to create one data set

    The script read in the observations for the 561 variable for the train data set (*x_train.txt*), the kind of activities associated with the observations (*y_train.txt*), and the subject associated with the observations (*subject_train.txt*) with the `read.table()` function as data frames. The same data are read in for the test data set (*x_test.txt*, *y_test.txt*, and *subject_test.txt*).

    These 6 data frames were then combined into the merged data set of 10299 observations of 563 variables with a combination of the `cbind()` and `rbind()` functions. Names were also assigned to the columns, using "subject", "activity", and the names listed in the *features.txt* files that came with the original raw data set. This makes the next step easier.

2. Extracts only the measurements on the mean and standard deviation for each measurement

    These would be the columns that contain either "*mean()*" or "*std()*". Of cos the "subject" and "activity" columns were also extracted. This was achieved by using the `grep` function. The resulting intermediate data set contained 10299 observations of 68 variables.

3. Uses descriptive activity names to name the activities in the data set

    The 6 activity names in the *activity_labels.txt* file were used to replace the corresponding activity originally coded as integer from 1 to 6 in the "activity" column.

4. Appropriately labels the data set with descriptive variable names

    This step was carried out in a number of sub-steps, making use of the `gsub()` and `sub()` functions.

    - Removing the "*-*", "*(*", and "*)*" characters from the variable names, as these may cause error in R.
    - Changing the "*t*" prefix in the time domain data to "*time*", to make the names more self descriptive.
    - Changing the "*f*" prefix in the time domain data to "*freq*", to make the names more self descriptive.
    - Changing "mean" in the variable names to "Mean" to make it conform with my preferred way of capitalisation (CamelCase that begins with a lower case letter).
    - Changing "std" in the variable names to "StdDev".
    - Fix the "bodybody" naming error in the original data set.

    The resulting intermediate data set now contains descriptive variable names that are compatible with R and conform to the CamelCase convetion starting with a lower case letter.

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject

    xxx xxx


listing all the related files, 
instructions on how to use the script, 
a general description of the raw data and it's source, 
a description of what the script will do



how the script work


This is the README.md file.

Currently blank.
