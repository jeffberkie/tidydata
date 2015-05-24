---
title: Codebook for Getting & Cleaning Data Course Project
author: Jeff B.
date: May 24, 2015
---

**NOTE: It is highly recommended that you read the readme.md file included in this repository before reviewing this codebook.**

###Cleaning of the data
The cleaning script (run_analysis.R) downloads the data (if necessary) and produces a clean data set from which the means and standard deviations of the various feature measurements.  It also produces a second tidy data set that summarizes the means of each feature measurement for each activity and each study participant ("subject").
 

##Description of the variables in the tidydata.txt file
The tidy data set has 180 observations of 88 variables.  The first two variables identify the activity and subject being measured.  The remaining variables provide the average of each feature measurement for each activity and each subject.

###ActivityID
In the tidy data set, the first column is "ActivityID", which is the activity being undertaken by each subject.  ActivityID is class of character string and has six levels, which are based on the activity_labels.txt included in the UCI HAR Dataset.

###SubjectID 
The second column is "SubjectID", which is the number identifying from which participant the feature measurements were taken.  SubjectID is class integer and includes the numbers 1 through 30, because there were 30 participants in the study.

###Remaining Variables
The other 86 columns provide the average of the means and standard deviations (as indicated in the column name) for each feature measurement.  They are all class numeric and range between -1 and 1.  More detailed explanations for each of feature measurements can be found in the UCI HAR Dataset readme.txt and features_info.txt files.  *Note that a number of the variables had duplicate labels which were made unique using make.names during the data cleaning process.*

####tBodyAcc.mean...X
Contains the average of the means for the accelerometer measurement for the body signal on the X axial.

####tBodyAcc.mean...Y
Contains the average of the means for the accelerometer measurement for the body signal on the Y axial.

####tBodyAcc.mean...Z
Contains the average of the means for the accelerometer measurement for the body signal on the Z axial.

####tGravityAcc.mean...X                
Contains the average of the means for the accelerometer measurement for the gravity signal on the X axial.

####tGravityAcc.mean...Y
Contains the average of the means for the accelerometer measurement for the gravity signal on the Y axial.

####tGravityAcc.mean...Z                
Contains the average of the means for the accelerometer measurement for the gravity signal on the Z axial.

####tBodyAccJerk.mean...X
Contains the average of the means for the body linear acceleration derived in time to obtain Jerk signals on the X axial.

####tBodyAccJerk.mean...Y             
Contains the average of the means for the body linear acceleration derived in time to obtain Jerk signals on the y axial.

####tBodyAccJerk.mean...Z
Contains the average of the means for the body linear acceleration derived in time to obtain Jerk signals on the Z axial.

####tBodyGyro.mean...X                  
Contains the average of the means for the body's angular velocity the X axial.

####tBodyGyro.mean...Y
Contains the average of the means for the body's angular velocity the Y axial.

####tBodyGyro.mean...Z                 
Contains the average of the means for the body's angular velocity the Z axial.

####tBodyGyroJerk.mean...X
Contains the average of the means for the body's angular velocity derived in time to obtain Jerk signals on the X axial.

####tBodyGyroJerk.mean...Y             
Contains the average of the means for the body's angular velocity derived in time to obtain Jerk signals on the Y axial.

####tBodyGyroJerk.mean...Z
Contains the average of the means for the body's angular velocity derived in time to obtain Jerk signals on the Z axial.

####tBodyAccMag.mean..                
Contains the average of the means for the magnitude of the body's linear acceleration calculated on all three axes using the Euclidean norm.

####tGravityAccMag.mean..
Contains the average of the means for the magnitude of accelerometer measurement for the gravity signal calculated on all three axes using the Euclidean norm.

####tBodyAccJerkMag.mean..
Contains the average of the means for the magnitude of the body's linear acceleration derived in time to obtain Jerk signals calculated on all three axes using the Euclidean norm.

####tBodyGyroMag.mean..
Contains the average of the means for the magnitude of the body's angular velocity calculated on all three axes using the Euclidean norm.

####tBodyGyroJerkMag.mean..
Contains the average of the means for the magnitude of the body's angular velocity derived in time to obtain Jerk signals calculated on all three axes using the Euclidean norm.

####fBodyAcc.mean...X
Contains the average of the means for a Fast Fourier Transform applied to the body's linear acceleration on the X axial.

####fBodyAcc.mean...Y                
Contains the average of the means for a Fast Fourier Transform applied to the body's linear acceleration on the Y axial.

####fBodyAcc.mean...Z
Contains the average of the means for a Fast Fourier Transform applied to the body's linear acceleration on the Z axial.

####fBodyAcc.meanFreq...X
Contains the average of the mean frequencies for a Fast Fourier Transform applied to the body's linear acceleration on the X axial.

####fBodyAcc.meanFreq...Y
Contains the average of the mean frequencies for a Fast Fourier Transform applied to the body's linear acceleration on the Y axial.

####fBodyAcc.meanFreq...Z
Contains the average of the mean frequencies for a Fast Fourier Transform applied to the body's linear acceleration on the Z axial.

####fBodyAccJerk.mean...X
Contains the average of the means for a Fast Fourier Transform applied to the body's linear acceleration derived in time to obtain Jerk signals on the X axial.

####fBodyAccJerk.mean...Y
Contains the average of the means for a Fast Fourier Transform applied to the body's linear acceleration derived in time to obtain Jerk signals on the Y axial.

####fBodyAccJerk.mean...Z
Contains the average of the means for a Fast Fourier Transform applied to the body's linear acceleration derived in time to obtain Jerk signals on the Z axial.

####fBodyAccJerk.meanFreq...X
Contains the average of the mean frequencies for a Fast Fourier Transform applied to the body's linear acceleration derived in time to obtain Jerk signals on the X axial.

####fBodyAccJerk.meanFreq...Y
Contains the average of the mean frequencies for a Fast Fourier Transform applied to the body's linear acceleration derived in time to obtain Jerk signals on the Y axial.

####fBodyAccJerk.meanFreq...Z
Contains the average of the mean frequencies for a Fast Fourier Transform applied to the body's linear acceleration derived in time to obtain Jerk signals on the Z axial.

####fBodyGyro.mean...X
Contains the average of the means for a Fast Fourier Transform applied to the body's angular velocity the X axial.

####fBodyGyro.mean...Y
Contains the average of the means for a Fast Fourier Transform applied to the body's angular velocity the Y axial.

####fBodyGyro.mean...Z
Contains the average of the means for a Fast Fourier Transform applied to the body's angular velocity the Z axial.

####fBodyGyro.meanFreq...X
Contains the average of the mean frequencies for a Fast Fourier Transform applied to the body's angular velocity the X axial.

####fBodyGyro.meanFreq...Y
Contains the average of the mean frequencies for a Fast Fourier Transform applied to the body's angular velocity the Y axial.

####fBodyGyro.meanFreq...Z
Contains the average of the mean frequencies for a Fast Fourier Transform applied to the body's angular velocity the Z axial.

####fBodyAccMag.mean..
Contains the average of the means for a Fast Fourier Transform applied to the magnitude of the body's linear acceleration calculated on all three axes using the Euclidean norm.

####fBodyAccMag.meanFreq..
Contains the average of the mean frequencies for a Fast Fourier Transform applied to the magnitude of the body's linear acceleration calculated on all three axes using the Euclidean norm.

####fBodyBodyAccJerkMag.mean..
Contains the average of the means for a Fast Fourier Transform applied to the magnitude of the body's linear acceleration derived in time to obtain Jerk signals calculated on all three axes using the Euclidean norm.

####fBodyBodyAccJerkMag.meanFreq..
Contains the average of the mean frequencies for a Fast Fourier Transform applied to the magnitude of the body's linear acceleration derived in time to obtain Jerk signals calculated on all three axes using the Euclidean norm.

####fBodyBodyGyroMag.mean..
Contains the average of the means for a Fast Fourier Transform applied to the magnitude of the body's angular velocity calculated on all three axes using the Euclidean norm.

####fBodyBodyGyroMag.meanFreq..
Contains the average of the mean frequencies for a Fast Fourier Transform applied to the magnitude of the body's angular velocity calculated on all three axes using the Euclidean norm.

####fBodyBodyGyroJerkMag.mean..
Contains the average of the means for a Fast Fourier Transform applied to the magnitude of the body's angular velocity derived in time to obtain Jerk signals calculated on all three axes using the Euclidean norm.

####fBodyBodyGyroJerkMag.meanFreq..
Contains the average of the mean frequencies for a Fast Fourier Transform applied to the magnitude of the body's angular velocity derived in time to obtain Jerk signals calculated on all three axes using the Euclidean norm.

####angle.tBodyAccMean.gravity.
Contains the average of the gravity means of the angle between vectors in a signal window sample from the body's linear acceleration.

####angle.tBodyAccJerkMean..gravityMean.
Contains the average of the gravity means of the angle between vectors in a signal window sample from the body's linear acceleration derived in time to obtain Jerk signals.

####angle.tBodyGyroMean.gravityMean.
Contains the average of the gravity means of the angle between vectors in a signal window sample from the body's angular velocity.

####angle.tBodyGyroJerkMean.gravityMean.
Contains the average of the gravity means of the angle between vectors in a signal window sample from the body's angular velocity derived in time to obtain Jerk signals.

####angle.X.gravityMean.
Contains the average of the gravity means from the X axial.

####angle.Y.gravityMean.
Contains the average of the gravity means from the Y axial.

####angle.Z.gravityMean.
Contains the average of the gravity means from the Z axial.

####tBodyAcc.std...X
Contains the average of the standard deviations for the accelerometer measurement for the body signal on the X axial.

####tBodyAcc.std...Y
Contains the average of the standard deviations for the accelerometer measurement for the body signal on the Y axial.

####tBodyAcc.std...Z
Contains the average of the standard deviations for the accelerometer measurement for the body signal on the Z axial.

####tGravityAcc.std...X
Contains the average of the standard deviations for the accelerometer measurement for the gravity signal on the X axial.

####tGravityAcc.std...Y                 
Contains the average of the standard deviations for the accelerometer measurement for the gravity signal on the Y axial.

####tGravityAcc.std...Z
Contains the average of the standard deviations for the accelerometer measurement for the gravity signal on the Z axial.

####tBodyAccJerk.std...X
Contains the average of the standard deviations for the body linear acceleration derived in time to obtain Jerk signals on the X axial.

####tBodyAccJerk.std...Y
Contains the average of the standard deviations for the body linear acceleration derived in time to obtain Jerk signals on the Y axial.

####tBodyAccJerk.std...Z
Contains the average of the standard deviations for the body linear acceleration derived in time to obtain Jerk signals on the Z axial.

####tBodyGyro.std...X
Contains the average of the standard deviations for the body's angular velocity the X axial.

####tBodyGyro.std...Y
Contains the average of the standard deviations for the body's angular velocity the Y axial.

####tBodyGyro.std...Z
Contains the average of the standard deviations for the body's angular velocity the Z axial.

####tBodyGyroJerk.std...X
Contains the average of the standard deviations for the body's angular velocity derived in time to obtain Jerk signals on the X axial.

####tBodyGyroJerk.std...Y
Contains the average of the standard deviations for the body's angular velocity derived in time to obtain Jerk signals on the Y axial.

####tBodyGyroJerk.std...Z
Contains the average of the standard deviations for the body's angular velocity derived in time to obtain Jerk signals on the Z axial.

####tBodyAccMag.std..
Contains the average of the standard deviations for the magnitude of the body's linear acceleration calculated on all three axes using the Euclidean norm.

####tGravityAccMag.std..
Contains the average of the standard deviations for the magnitude of accelerometer measurement for the gravity signal calculated on all three axes using the Euclidean norm.

####tBodyAccJerkMag.std..
Contains the average of the standard deviations for the magnitude of the body's linear acceleration derived in time to obtain Jerk signals calculated on all three axes using the Euclidean norm.

####tBodyGyroMag.std..
Contains the average of the standard deviations for the magnitude of the body's angular velocity calculated on all three axes using the Euclidean norm.

####tBodyGyroJerkMag.std..
Contains the average of the standard deviations for the magnitude of the body's angular velocity derived in time to obtain Jerk signals calculated on all three axes using the Euclidean norm.

####fBodyAcc.std...X
Contains the average of the standard deviations for a Fast Fourier Transform applied to the body's linear acceleration on the X axial.

####fBodyAcc.std...Y
Contains the average of the standard deviations for a Fast Fourier Transform applied to the body's linear acceleration on the Y axial.

####fBodyAcc.std...Z
Contains the average of the standard deviations for a Fast Fourier Transform applied to the body's linear acceleration on the Z axial.

####fBodyAccJerk.std...X
Contains the average of the standard deviations for a Fast Fourier Transform applied to the body's linear acceleration derived in time to obtain Jerk signals on the X axial.

####fBodyAccJerk.std...Y
Contains the average of the standard deviations for a Fast Fourier Transform applied to the body's linear acceleration derived in time to obtain Jerk signals on the Y axial.

####fBodyAccJerk.std...Z
Contains the average of the standard deviations for a Fast Fourier Transform applied to the body's linear acceleration derived in time to obtain Jerk signals on the Z axial.

####fBodyGyro.std...X
Contains the average of the standard deviations for a Fast Fourier Transform applied to the body's angular velocity the X axial.

####fBodyGyro.std...Y
Contains the average of the standard deviations for a Fast Fourier Transform applied to the body's angular velocity the Y axial.

####fBodyGyro.std...Z
Contains the average of the standard deviations for a Fast Fourier Transform applied to the body's angular velocity the Z axial.

####fBodyAccMag.std..
Contains the average of the standard deviations for a Fast Fourier Transform applied to the magnitude of the body's linear acceleration calculated on all three axes using the Euclidean norm.

####fBodyBodyAccJerkMag.std..
Contains the average of the standard deviations for a Fast Fourier Transform applied to the magnitude of the body's linear acceleration derived in time to obtain Jerk signals calculated on all three axes using the Euclidean norm.

####fBodyBodyGyroMag.std..
Contains the average of the standard deviations for a Fast Fourier Transform applied to the magnitude of the body's angular velocity calculated on all three axes using the Euclidean norm.

####fBodyBodyGyroJerkMag.std..
Contains the average of the standard deviations for a Fast Fourier Transform applied to the magnitude of the body's angular velocity derived in time to obtain Jerk signals calculated on all three axes using the Euclidean norm.

##Sources
The raw data was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip but can also be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.  Details on the original collection of this data is available at those links.

As noted in the readme.md file, for the tidy data set, we used the interpretation discussed in this thread: https://class.coursera.org/getdata-014/forum/thread?thread_id=31 
