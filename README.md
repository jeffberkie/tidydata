---
title: Getting & Cleaning Data Course Project Assigment
author: Jeff B.
date: May 24, 2015
---

## Project Description
The goal of this project is to clean and organize the data from the UCI Machine Learning Repository's Human Activity Recocnition Using Smartphones project into a tidy, usable data set and a second data set of the means of each feature for each activity and each subject.
 
##Study design and data processing
 
###Collection of the raw data
The raw data was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip but can also be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.  Details on the original collection of this data is available at those links.

###Notes on the original (raw) data 
The original data is split between training and testing data sets, each of which are further split between three files, one containing the activity observations, one containing the ID labels for which participant in the experiment undertook each activity observed, and the last containing the ID labels for the activity being observed.  

The description of the numerical code each activity being observed is listed in the activity_labels.txt.  There is also separate file containing the descriptions of the feature measurements and calculations performed on those observations that corresponds to the columns of the training and testing data sets.
 
##Creating the tidy datafile

For the tidy data set of means, we used the interpretation discussed in this thread: https://class.coursera.org/getdata-014/forum/thread?thread_id=31

You can read the data from the tidy data set into R and view it using the following code:

>address <- "https://s3.amazonaws.com/coursera-uploads/user-6fede57f5a0f5c24b5e843a2/973501/asst-3/379ac200024b11e5b6b1e9a57cc12969.txt"
>address <- sub("^https", "http", address)
>tidydata <- read.table(url(address), header = TRUE)
>View(tidydata)
 
###Guide to create the tidy data file
The following steps were taken to clean the data set, all of which are included in the run_analysis.R script:

1. Download and unzip the data.
2. Load the training and testing data sets, along with the respective subject and activity ID files.
3. Combine each data set with its respective ID files.
4. Merge the training and testing data set into one file.
5. Replace the activity code numbers with their corresponding activity description labels from the activity_labels.txt  file included in the downloaded data package.
6. Change the column names (which start as V1, V2, etc.) to match the measurement/calculation descriptions in the features.txt file included in the downloaded data package.
7. Extract only those columns with names that include "mean" or "std", so that the data set is limited to the means and standard deviations of each feature measurement.
8. Create a new, second data set using the extracted data from step 7, grouped by activity and subject, with the mean calculated for each feature measurement.

See the codebook in this repository for details on the variables in the final tidy dataset.