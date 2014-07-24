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

- README.md: This file : )
- run_analysis.R : An R script that convert the orignal raw data set into a tidy data set and export it to a text file *tidyDataSetMeanValues.txt*
- tidyDataSetMeanValues.txt: *The* tidy data set. This was uploaded to Coursera's submission page and was also included in this repo for convenience. This data set has 180 obervations (rows) and 68 variables (columns, to be described in the code book).
- codeBook.md: The code book that describes the naming convention of the variables and the variables themselves.
 
### The original raw data set and how it was converted into the tidy data set

For full details on the original raw data set, please refer back to its own documentation files, such as README.txt and features_info.txt, that came with the original data set.

In short, the original raw data set consists of two data sets, the train set and the test set, which contains 7352 and 2947 obervations of 561 variables (the "features" as described in the original documentation) respectively. Together these record the data collected from 30 subjects performing 6 types of activities. As such the train and test set can be combined into a data set of 10299 observations of 563 variables, including the subject and activity as the 2 extra variables.

This original raw data set is converted into the tidy data set by the R script *run_analysis.R* as described below. There are also comments inside the R script to explain each steps.

1. Merges the training and the test sets to create one data set

    The script read in the observations for the 561 variable for the train data set (*x_train.txt*), the kind of activities associated with the observations (*y_train.txt*), and the subject associated with the observations (*subject_train.txt*) with the `read.table()` function as data frames. The same data are read in for the test data set (*x_test.txt*, *y_test.txt*, and *subject_test.txt*).

    These 6 data frames were then combined into the merged data set of 10299 observations of 563 variables with a combination of the `cbind()` and `rbind()` functions. Names were also assigned to the columns, using "subject", "activity", and the names listed in the *features.txt* files that came with the original raw data set. This makes the next step easier.

2. Extracts only the measurements on the mean and standard deviation for each measurement

    These would be the columns with name that contain either "*mean()*" or "*std()*". Of cos the "subject" and "activity" columns were also extracted. This was achieved by using the `grep` function. The resulting intermediate data set contained 10299 observations of 68 variables.

3. Uses descriptive activity names to name the activities in the data set

    The 6 activity names in the *activity_labels.txt* file were used to replace the corresponding activity originally coded as integer from 1 to 6 in the "activity" column. The integer value was used in the R script as the index to a list of the 6 possible acitivty names.  
  
4. Appropriately labels the data set with descriptive variable names
 
    This step was carried out in a number of sub-steps, making use of the `gsub()` and `sub()` functions.   
    * Removing the "*-*", "*(*", and "*)*" characters from the variable names, as these may cause error in R. 
    * Changing the "*t*" prefix in the time domain data to "*time*", to make the names more self descriptive. 
    * Changing the "*f*" prefix in the time domain data to "*freq*", to make the names more self descriptive.  
    * Changing "mean" in the variable names to "Mean" to make it conform with my preferred way of capitalisation (CamelCase that begins with a lower case letter).   
    * Changing "std" in the variable names to "StdDev".   
    * Fix the "bodybody" naming error in the original data set.  
 
   The resulting intermediate data set now contains descriptive variable names that are compatible with R and conform to the CamelCase convetion starting with a lower case letter.  
 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject  

    This step aims to calculate group-wise mean values for all possible combinations of subjects (30) and activities (6), and as such resulted in a data set with 180 observations of 68 variables. The `ddply()` function was used for splitting the data into the proper groups, and the `numcolwise()` function was used to allow the `mean()` function to calculate the mean values for every numeric column.  
  
  
This "wide" format of tidy data set is not the only acceptable format for tidy data. For details, one may refer to Hadley Wickham's *Tidy Data* paper:
  
http://vita.had.co.nz/papers/tidy-data.pdf

Yet, as discussed in the course forum, this "wide" format of tidy data is considered an acceptable format by the community TA, as shown here:

https://class.coursera.org/getdata-005/forum/thread?thread_id=199

Finally, the tidy data set was written to a text file, *tidyDataSetMeanValues.txt* in the "output" folder. The function `write.table()` function with the parameter `row.names=FALSE` was used, and hence the text file can be read back into R with the `read.table()` function with the parameter `header=TRUE` .  

### How to use the *run_analysis.R* script  
  
* From the "*UCI HAR Dataset.zip*" file, extract the "*UCI HAR Dataset*" folder into a working directory.
* The script file should be placed in the same directory into which the "UCI HAR Dataset" folder was extracted.
* You may have to manually set the working directory to the location of the source file.
* The "*plyr*" package is required for functions like `ddply()` and `numcolwise()`. As such, you may wish to do `install.packages("plyr")` if necessary.
* My own preferred way to run the script is to open the script in RStudio, and do a Session>Set Working Directory>To Source File Location. Then select the whole script and press CTRL-ENTER to run all the lines.
* The whole process of converting the original raw data set to the tidy data set may take a while, depending on your hardware.
* The tidy data set text file *tidyDataSetMeanValues.txt* is saved into the "output" folder. It can be loaded into R as a data frame by, for example, `df <- read.table("output/tidyDataSetMeanValues.txt",header=TRUE)` .



terenceltl, Jul 2014
