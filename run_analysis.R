## run_analysis.R
## This R script should be placed in the same directory
## in which the "UCI HAR Dataset" folder also resides.
## You may have to manually set the working directory to the 
## location of the source file.
## The package "plyr" is required for the function ddply().

## read in the necessary files for the test and train sets
y.train = read.table("UCI HAR Dataset/train/y_train.txt")
x.train = read.table("UCI HAR Dataset/train/X_train.txt")
subject.train = read.table("UCI HAR Dataset/train/subject_train.txt")
y.test = read.table("UCI HAR Dataset/test/y_test.txt")
x.test = read.table("UCI HAR Dataset/test/X_test.txt")
subject.test = read.table("UCI HAR Dataset/test/subject_test.txt")
features = read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE) # [2]
activity.labels = read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)

## Merges the training and the test sets to create one data set.
mergedDF = rbind(cbind(subject.train,y.train,x.train),cbind(subject.test,y.test,x.test))
# Labels the data set with the names from the feature.txt file
names(mergedDF) = c("subject","activity",features[[2]])

## Extracts only the measurements on the mean and standard deviation
## for each measurement.
meanStdDF = mergedDF[,grep("(^activity$)|(^subject$)|(mean[(][)])|(std[(][)])",names(mergedDF))]

## Uses descriptive activity names to name the activities in the data set.
meanStdDF$activity = activity.labels[[2]][meanStdDF$activity]

## Appropriately labels the data set with descriptive variable names.
# Clean up the column names as some of the characters would cause
# problem in R: "-", "(", and ")"
names(meanStdDF) = gsub("[-()]","",names(meanStdDF))
# label time doman variables as as "time..." instead of "t..."
names(meanStdDF) = sub("^t","time",names(meanStdDF))
# label frequency doman variables as as "freq..." instead of "f..."
names(meanStdDF) = sub("^f","freq",names(meanStdDF))
# replace "mean" as "Mean" to conform to the CamelCase convention
names(meanStdDF) = sub("mean","Mean",names(meanStdDF))
# replace "std" as "StdDev" to conform to the CamelCase convention
# and also make it more descriptive
names(meanStdDF) = sub("std","StdDev",names(meanStdDF))
# fix the "bodybody" typo in the original data set
names(meanStdDF) = sub("BodyBody","Body",names(meanStdDF))
# the result names are now useable in R and conform
# to the CamelCase convetion starting with a lower case letter

## Creates a second, independent tidy data set with the average of
## each variable for each activity and each subject.
library("plyr")
tidyDF = ddply(meanStdDF,.(subject, activity),numcolwise(mean))

## Write the tidy data set to the output folder in the
## working directory
if (!file.exists("output")) {dir.create("output")}
write.table(tidyDF, file="output/tidyDataSetMeanValues.txt",row.names=FALSE)
## the resulting fle can be read back into R using a statement like this:
## read.table("output/tidyDataSetMeanValues.txt",header=TRUE)

## Notes: this tidy data set is the "wide" format as described
## by the community TA here:
## https://class.coursera.org/getdata-005/forum/thread?thread_id=199
## and is considered to be an acceptable format.