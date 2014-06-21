CodeBook for run_analysis
=========================
This document is part of project work for "Getting & Cleaning Data" class offered by Coursera. 
Written by PanaEk Warawit on June 21, 2014. 

Project Location: [github.com/pwarawit/getdata_project](https://github.com/pwarawit/getdata_project/)

Overview
----------
This project aims to prepare a tidy data set from raw data called [Human Activity Recognition Using Smartphones Data Set](http:///archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). Using R Programming language as data preparation tool.
This document describes details of the data output files created by run_analysis.R function. 

| File Name	| Description	|
|:---		|:---		|
| avg_output.csv	| Aggregated data from detail combined data for average by subject and by activity for each measure	|
| output.csv	| Detail combined data between train group and test group, selected only mean and standard deviation measures	| 

avg_output.csv
--------------
* Text file, comma-separated values
* First line contains column names
* No quotes
* All the measures are averaged by subject and by activity
* Each line in data file represents an average by subject by activity

| Column Name | Description |
:---	|:---	|
|    SubjectID    | An integer range from 1-30 representing individual person participate in the study.	|
|    Activity    | A text field describing activity that the subject perform. There are 6 possible values (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 	|
|    Avg.tBodyAcc.mean.X    | Average of mean of time-domain body acceleration along X-axis	|
|    Avg.tBodyAcc.mean.Y    | Average of mean of time-domain body acceleration along Y-axis	|
|    Avg.tBodyAcc.mean.Z    | Average of mean of time-domain body acceleration along Z-axis	|
|    Avg.tBodyAcc.std.X    | Average of standard deviation of time-domain body acceleration along X-axis	|
|    Avg.tBodyAcc.std.Y    | Average of standard deviation of time-domain body acceleration along Y-axis	|
|    Avg.tBodyAcc.std.Z    | Average of standard deviation of time-domain body acceleration along Z-axis	|
|    Avg.tGravityAcc.mean.X    | Average of mean of time-domain gravity acceleration along X-axis	|
|    Avg.tGravityAcc.mean.Y    | Average of mean of time-domain gravity acceleration along Y-axis	|
|    Avg.tGravityAcc.mean.Z    | Average of mean of time-domain gravity acceleration along Z-axis	|
|    Avg.tGravityAcc.std.X    | Average of standard deviation of time-domain gravity acceleration along X-axis	|
|    Avg.tGravityAcc.std.Y    | Average of standard deviation of time-domain gravity acceleration along Y-axis	|
|    Avg.tGravityAcc.std.Z    | Average of standard deviation of time-domain gravity acceleration along Z-axis	|
|    Avg.tBodyAccJerk.mean.X    | Average of mean of time-domain body acceleration in jerk along X-axis |
|    Avg.tBodyAccJerk.mean.Y    | Average of mean of time-domain body acceleration in jerk along Y-axis |
|    Avg.tBodyAccJerk.mean.Z    | Average of mean of time-domain body acceleration in jerk along Z-axis |
|    Avg.tBodyAccJerk.std.X    | Average of standard deviation of time-domain body acceleration in jerk along X-axis	|
|    Avg.tBodyAccJerk.std.Y    | Average of standard deviation of time-domain body acceleration in jerk along Y-axis	|
|    Avg.tBodyAccJerk.std.Z    | Average of standard deviation of time-domain body acceleration in jerk along Z-axis	|
|    Avg.tBodyGyro.mean.X    | Average of mean of time-domain body gyroscope along X-axis	|
|    Avg.tBodyGyro.mean.Y    | Average of mean of time-domain body gyroscope along Y-axis	|
|    Avg.tBodyGyro.mean.Z    | Average of mean of time-domain body gyroscope along Z-axis	|
|    Avg.tBodyGyro.std.X    | Average of standard deviation of time-domain body gyroscope along X-axis	|
|    Avg.tBodyGyro.std.Y    | Average of standard deviation of time-domain body gyroscope along Y-axis	|
|    Avg.tBodyGyro.std.Z    | Average of standard deviation of time-domain body gyroscope along Z-axis	|
|    Avg.tBodyGyroJerk.mean.X    | Average of mean of time-domain body gyroscope in jerk along X-axis	|
|    Avg.tBodyGyroJerk.mean.Y    | Average of mean of time-domain body gyroscope in jerk along Y-axis	|
|    Avg.tBodyGyroJerk.mean.Z    | Average of mean of time-domain body gyroscope in jerk along Z-axis	|
|    Avg.tBodyGyroJerk.std.X    | Average of standard deviation of time-domain body gyroscope in jerk along X-axis	|
|    Avg.tBodyGyroJerk.std.Y    | Average of standard deviation of time-domain body gyroscope in jerk along Y-axis	|
|    Avg.tBodyGyroJerk.std.Z    | Average of standard deviation of time-domain body gyroscope in jerk along Z-axis	|
|    Avg.tBodyAccMag.mean    | Average of mean of time-domain body acceleration magnitude	|
|    Avg.tBodyAccMag.std    | Average of standard deviation of time-domain body acceleration magnitude	|
|    Avg.tGravityAccMag.mean    | Average of mean of time-domain gravity acceleration magnitude	|
|    Avg.tGravityAccMag.std    | Average of standard deviation of time-domain gravity acceleration manitude	|
|    Avg.tBodyAccJerkMag.mean    | Average of mean of time-domain body acceleration in jerk magnitude	|
|    Avg.tBodyAccJerkMag.std    | Average of standard deviation of time-domain body acceleration in jerk magnitude	|
|    Avg.tBodyGyroMag.mean    |	 Average of mean of time-domain body gyroscope magnitude |
|    Avg.tBodyGyroMag.std    |	Average of standard deviation of time-domain body gyroscope magnitude |
|    Avg.tBodyGyroJerkMag.mean    | Average of mean of time-domain body gyroscope in jerk magnitude	|
|    Avg.tBodyGyroJerkMag.std    | Average of standard deviation of time-domain body gyroscope in jerk magnitude	|
|    Avg.fBodyAcc.mean.X    | Average of mean of frequency-domain body acceleration along X-axis	|
|    Avg.fBodyAcc.mean.Y    | Average of mean of frequency-domain body acceleration along Y-axis	|
|    Avg.fBodyAcc.mean.Z    | Average of mean of frequency-domain body acceleration along Z-axis	|
|    Avg.fBodyAcc.std.X    | Average of standard deviation of frequency-domain body acceleration along X-axis	|
|    Avg.fBodyAcc.std.Y    | Average of standard deviation of frequency-domain body acceleration along Y-axis	|
|    Avg.fBodyAcc.std.Z    | Average of standard deviation of frequency-domain body acceleration along Z-axis	|
|    Avg.fBodyAcc.meanFreq.X    | Average of mean frequency of frequency-domain body acceleration along X-axis	|
|    Avg.fBodyAcc.meanFreq.Y    | Average of mean frequency of frequency-domain body acceleration along Y-axis	|
|    Avg.fBodyAcc.meanFreq.Z    | Average of mean frequency of frequency-domain body acceleration along Z-axis	|
|    Avg.fBodyAccJerk.mean.X    | Average of mean of frequency-domain body acceleration in jerk along X-axis	|
|    Avg.fBodyAccJerk.mean.Y    | Average of mean of frequency-domain body acceleration in jerk along Y-axis	|
|    Avg.fBodyAccJerk.mean.Z    | Average of mean of frequency-domain body acceleration in jerk along Z-axis	|
|    Avg.fBodyAccJerk.std.X    | Average of standard deviation of frequency-domain body acceleration in jerk along X-axis	|
|    Avg.fBodyAccJerk.std.Y    | Average of standard deviation of frequency-domain body acceleration in jerk along Y-axis	|
|    Avg.fBodyAccJerk.std.Z    | Average of standard deviation of frequency-domain body acceleration in jerk along Z-axis	|
|    Avg.fBodyAccJerk.meanFreq.X    | Average of mean frequency of frequency-domain body acceleration in jerk along X-axis |
|    Avg.fBodyAccJerk.meanFreq.Y    | Average of mean frequency of frequency-domain body acceleration in jerk along Y-axis |
|    Avg.fBodyAccJerk.meanFreq.Z    | Average of mean frequency of frequency-domain body acceleration in jerk along Z-axis |
|    Avg.fBodyGyro.mean.X    | Average of mean of frequency-domain body gyroscope along X-axis	|
|    Avg.fBodyGyro.mean.Y    | Average of mean of frequency-domain body gyroscope along Y-axis	|
|    Avg.fBodyGyro.mean.Z    | Average of mean of frequency-domain body gyroscope along Z-axis	|
|    Avg.fBodyGyro.std.X    | Average of standard deviation of frequency-domain body gyroscope along X-axis	|
|    Avg.fBodyGyro.std.Y    | Average of standard deviation of frequency-domain body gyroscope along Y-axis	|
|    Avg.fBodyGyro.std.Z    | Average of standard deviation of frequency-domain body gyroscope along Z-axis	|
|    Avg.fBodyGyro.meanFreq.X    | Average of mean frequency of frequency-domain body gyroscope along X-axis	|
|    Avg.fBodyGyro.meanFreq.Y    | Average of mean frequency of frequency-domain body gyroscope along Y-axis	|
|    Avg.fBodyGyro.meanFreq.Z    | Average of mean frequency of frequency-domain body gyroscope along Z-axis	|
|    Avg.fBodyAccMag.mean    | Average of mean of frequency-domain body acceleration magnitude |
|    Avg.fBodyAccMag.std    | Average of standard deviation of frequency-domain body acceleration magnitude |
|    Avg.fBodyAccMag.meanFreq    | Average of mean frequency of frequency-domain boy acceleration magnitude	|
|    Avg.fBodyBodyAccJerkMag.mean    |	 Average of mean of frequency-domain body acceleration in jerk magnitude |
|    Avg.fBodyBodyAccJerkMag.std    |	Average of standard deviation of frequency-domain body accleration in jerk magnitude |
|    Avg.fBodyBodyAccJerkMag.meanFreq    | Average of mean frequency in frequency-domain body acceleration in jerk magnitude	|
|    Avg.fBodyBodyGyroMag.mean    | Average of mean of frequency-domain body gyroscope magnitude |
|    Avg.fBodyBodyGyroMag.std    | Average of standard deviation of frequency-domain body gyroscope manitude	|
|    Avg.fBodyBodyGyroMag.meanFreq    |	 Average of mean frequency of frequency-domain body gyroscope magnitude |
|    Avg.fBodyBodyGyroJerkMag.mean    |	Average of mean frequency-domain body gyroscope in jerk magnitude |
|    Avg.fBodyBodyGyroJerkMag.std    |	Average of standard deviation of frequency-domain body gyroscope in jerk magnitude |
|    Avg.fBodyBodyGyroJerkMag.meanFreq    | Average of mean frequency of frequency-domain body gyroscope in jerk magnitude	|

output.csv
--------------
* Text file, comma-separated values
* First line contains column names
* No quotes
* All the measures are detail sampling data see original source file for more info.
* Each line in data file represents a sampling based on data collection method described in source data.

| Column Name | Description |
:---	|:---	|
|    SubjectID    | An integer range from 1-30 representing individual person participate in the study.	|
|    Activity    | A text field describing activity that the subject perform. There are 6 possible values (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 	|
|    tBodyAcc.mean.X    | mean of time-domain body acceleration along X-axis	|
|    tBodyAcc.mean.Y    | mean of time-domain body acceleration along Y-axis	|
|    tBodyAcc.std.X    | standard deviation of time-domain body acceleration along X-axis	|
|    tBodyAcc.std.Y    | standard deviation of time-domain body acceleration along Y-axis	|
|    tBodyAcc.std.Z    | standard deviation of time-domain body acceleration along Z-axis	|
|    tGravityAcc.mean.X    | mean of time-domain gravity acceleration along X-axis	|
|    tGravityAcc.mean.Y    | mean of time-domain gravity acceleration along Y-axis	|
|    tGravityAcc.mean.Z    | mean of time-domain gravity acceleration along Z-axis	|
|    tGravityAcc.std.X    | standard deviation of time-domain gravity acceleration along X-axis	|
|    tGravityAcc.std.Y    | standard deviation of time-domain gravity acceleration along Y-axis	|
|    tGravityAcc.std.Z    | standard deviation of time-domain gravity acceleration along Z-axis	|
|    tBodyAccJerk.mean.X    | mean of time-domain body acceleration in jerk along X-axis |
|    tBodyAccJerk.mean.Y    | mean of time-domain body acceleration in jerk along Y-axis |
|    tBodyAccJerk.mean.Z    | mean of time-domain body acceleration in jerk along Z-axis |
|    tBodyAccJerk.std.X    | standard deviation of time-domain body acceleration in jerk along X-axis	|
|    tBodyAccJerk.std.Y    | standard deviation of time-domain body acceleration in jerk along Y-axis	|
|    tBodyAccJerk.std.Z    | standard deviation of time-domain body acceleration in jerk along Z-axis	|
|    tBodyGyro.mean.X    | mean of time-domain body gyroscope along X-axis	|
|    tBodyGyro.mean.Y    | mean of time-domain body gyroscope along Y-axis	|
|    tBodyGyro.mean.Z    | mean of time-domain body gyroscope along Z-axis	|
|    tBodyGyro.std.X    | standard deviation of time-domain body gyroscope along X-axis	|
|    tBodyGyro.std.Y    | standard deviation of time-domain body gyroscope along Y-axis	|
|    tBodyGyro.std.Z    | standard deviation of time-domain body gyroscope along Z-axis	|
|    tBodyGyroJerk.mean.X    | mean of time-domain body gyroscope in jerk along X-axis	|
|    tBodyGyroJerk.mean.Y    | mean of time-domain body gyroscope in jerk along Y-axis	|
|    tBodyGyroJerk.mean.Z    | mean of time-domain body gyroscope in jerk along Z-axis	|
|    tBodyGyroJerk.std.X    | standard deviation of time-domain body gyroscope in jerk along X-axis	|
|    tBodyGyroJerk.std.Y    | standard deviation of time-domain body gyroscope in jerk along Y-axis	|
|    tBodyGyroJerk.std.Z    | standard deviation of time-domain body gyroscope in jerk along Z-axis	|
|    tBodyAccMag.mean    | mean of time-domain body acceleration magnitude	|
|    tBodyAccMag.std    | standard deviation of time-domain body acceleration magnitude	|
|    tGravityAccMag.mean    | mean of time-domain gravity acceleration magnitude	|
|    tGravityAccMag.std    | standard deviation of time-domain gravity acceleration manitude	|
|    tBodyAccJerkMag.mean    | mean of time-domain body acceleration in jerk magnitude	|
|    tBodyAccJerkMag.std    | standard deviation of time-domain body acceleration in jerk magnitude	|
|    tBodyGyroMag.mean    |	 mean of time-domain body gyroscope magnitude |
|    tBodyGyroMag.std    |	standard deviation of time-domain body gyroscope magnitude |
|    tBodyGyroJerkMag.mean    | mean of time-domain body gyroscope in jerk magnitude	|
|    tBodyGyroJerkMag.std    | standard deviation of time-domain body gyroscope in jerk magnitude	|
|    fBodyAcc.mean.X    | mean of frequency-domain body acceleration along X-axis	|
|    fBodyAcc.mean.Y    | mean of frequency-domain body acceleration along Y-axis	|
|    fBodyAcc.mean.Z    | mean of frequency-domain body acceleration along Z-axis	|
|    fBodyAcc.std.X    | standard deviation of frequency-domain body acceleration along X-axis	|
|    fBodyAcc.std.Y    | standard deviation of frequency-domain body acceleration along Y-axis	|
|    fBodyAcc.std.Z    | standard deviation of frequency-domain body acceleration along Z-axis	|
|    fBodyAcc.meanFreq.X    | mean frequency of frequency-domain body acceleration along X-axis	|
|    fBodyAcc.meanFreq.Y    | mean frequency of frequency-domain body acceleration along Y-axis	|
|    fBodyAcc.meanFreq.Z    | mean frequency of frequency-domain body acceleration along Z-axis	|
|    fBodyAccJerk.mean.X    | mean of frequency-domain body acceleration in jerk along X-axis	|
|    fBodyAccJerk.mean.Y    | mean of frequency-domain body acceleration in jerk along Y-axis	|
|    fBodyAccJerk.mean.Z    | mean of frequency-domain body acceleration in jerk along Z-axis	|
|    fBodyAccJerk.std.X    | standard deviation of frequency-domain body acceleration in jerk along X-axis	|
|    fBodyAccJerk.std.Y    | standard deviation of frequency-domain body acceleration in jerk along Y-axis	|
|    fBodyAccJerk.std.Z    | standard deviation of frequency-domain body acceleration in jerk along Z-axis	|
|    fBodyAccJerk.meanFreq.X    | mean frequency of frequency-domain body acceleration in jerk along X-axis |
|    fBodyAccJerk.meanFreq.Y    | mean frequency of frequency-domain body acceleration in jerk along Y-axis |
|    fBodyAccJerk.meanFreq.Z    | mean frequency of frequency-domain body acceleration in jerk along Z-axis |
|    fBodyGyro.mean.X    | mean of frequency-domain body gyroscope along X-axis	|
|    fBodyGyro.mean.Y    | mean of frequency-domain body gyroscope along Y-axis	|
|    fBodyGyro.mean.Z    | mean of frequency-domain body gyroscope along Z-axis	|
|    fBodyGyro.std.X    | standard deviation of frequency-domain body gyroscope along X-axis	|
|    fBodyGyro.std.Y    | standard deviation of frequency-domain body gyroscope along Y-axis	|
|    fBodyGyro.std.Z    | standard deviation of frequency-domain body gyroscope along Z-axis	|
|    fBodyGyro.meanFreq.X    | mean frequency of frequency-domain body gyroscope along X-axis	|
|    fBodyGyro.meanFreq.Y    | mean frequency of frequency-domain body gyroscope along Y-axis	|
|    fBodyGyro.meanFreq.Z    | mean frequency of frequency-domain body gyroscope along Z-axis	|
|    fBodyAccMag.mean    | mean of frequency-domain body acceleration magnitude |
|    fBodyAccMag.std    | standard deviation of frequency-domain body acceleration magnitude |
|    fBodyAccMag.meanFreq    | mean frequency of frequency-domain boy acceleration magnitude	|
|    fBodyBodyAccJerkMag.mean    | mean of frequency-domain body acceleration in jerk magnitude |
|    fBodyBodyAccJerkMag.std    | standard deviation of frequency-domain body accleration in jerk magnitude |
|    fBodyBodyAccJerkMag.meanFreq    | mean frequency in frequency-domain body acceleration in jerk magnitude	|
|    fBodyBodyGyroMag.mean    | mean of frequency-domain body gyroscope magnitude |
|    fBodyBodyGyroMag.std    | standard deviation of frequency-domain body gyroscope manitude	|
|    fBodyBodyGyroMag.meanFreq    | mean frequency of frequency-domain body gyroscope magnitude |
|    fBodyBodyGyroJerkMag.mean    | mean frequency-domain body gyroscope in jerk magnitude |
|    fBodyBodyGyroJerkMag.std    | standard deviation of frequency-domain body gyroscope in jerk magnitude |
|    fBodyBodyGyroJerkMag.meanFreq    | mean frequency of frequency-domain body gyroscope in jerk magnitude	|

