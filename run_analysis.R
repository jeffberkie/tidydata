## Getting and Cleaning Data Course Project
## Make sure to see readme.md and codebook.md for further detail on below script.
## NOTE: Questions are addressed in the order provided in course project assignment except for question #2, which is addressed fourth.
library(deplyr)

## Download and unzip data files if not already available
if (!dir.exists("UCI HAR Dataset")) {
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ", "UCI HAR Dataset.zip")
    unzip("UCI HAR Dataset.zip")
}

## LOADING THE DATA INTO ONE MERGED TABLE (addresses project question #1).

## Load the training data
training <- read.table("UCI HAR Dataset/train/X_train.txt")
training <- tbl_df(training)

## Load the training activity code numbers
training_activity_labels <- read.table("UCI HAR Dataset/train/Y_train.txt")
training_activity_labels <- tbl_df(training_activity_labels)
training_activity_labels <- rename(training_activity_labels, ActivityID = V1)

## Load the training subject ID numbers
training_subject_labels <- read.table("UCI HAR Dataset/train/subject_train.txt")
training_subject_labels <- tbl_df(training_subject_labels)
training_subject_labels <- rename(training_subject_labels, SubjectID = V1)

## Merge the subject IDs, activity code numbers and training data into one data frame
trained <- bind_cols(training_subject_labels, training_activity_labels, training)
trained <- tbl_df(trained)

## Remove unnecessary data files
rm(training, training_activity_labels, training_subject_labels)

## Load the testing data
testing <- read.table("UCI HAR Dataset/test/X_test.txt")
testing <- tbl_df(testing)

## Load the testing code numbers
testing_activity_labels <- read.table("UCI HAR Dataset/test/Y_test.txt")
testing_activity_labels <- tbl_df(testing_activity_labels)
testing_activity_labels <- rename(testing_activity_labels, ActivityID = V1)

## Load the testing subject ID numbers
testing_subject_labels <- read.table("UCI HAR Dataset/test/subject_test.txt")
testing_subject_labels <- tbl_df(testing_subject_labels)
testing_subject_labels <- rename(testing_subject_labels, SubjectID = V1)

## Merge the subject IDs, activity code numbers and training data into one data frame
tested <- bind_cols(testing_subject_labels, testing_activity_labels, testing)
tested <- tbl_df(tested)

## Remove unnecessary data files
rm(testing, testing_activity_labels, testing_subject_labels)

## Merge the training and testing data into a single data frame.
merged <- bind_rows(trained, tested)


## CLEANING THE DATA BY REPLACING ACTIVITY IDs WITH ACTIVITY NAMES (addresses project question #3).
activity_codes <- levels(factor(merged$ActivityID))
activity_names <- read.table("UCI HAR Dataset/activity_labels.txt")
activity_names <- as.vector(activity_names$V2)
library(plyr)
merged <- mutate(merged, ActivityID = mapvalues(merged$ActivityID, activity_codes, activity_names))


## CLEANING THE DATA BY RENAMING COLUMN NAMES (addresses project question #4).
measure_labels <- read.table("UCI HAR Dataset/features.txt")
measure_labels <- as.vector(measure_labels$V2)
measure_labels <- make.names(measure_labels, unique = TRUE)
measure_labels <- append(c("SubjectID", "ActivityID"), measure_labels)
names(merged) <- measure_labels


## EXTRACT MEAN AND STANDARD DEVIATION MEASURES (addresses project question #2)
extracted <- select(merged, SubjectID, ActivityID, contains("mean"), contains("std"))


## CREATE SEPARATE TINY DATA SET OF AVERAGES OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT (addresses project question #5)
tidydata <- extracted %>% group_by(ActivityID, SubjectID) %>% summarise_each(funs(mean))
write.table(tidydata, "tidydata.txt", row.name=FALSE)
