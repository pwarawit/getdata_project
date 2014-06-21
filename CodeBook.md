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
|    Avg.tGravityAcc.mean.X    |	|
|    Avg.tGravityAcc.mean.Y    |	|
|    Avg.tGravityAcc.mean.Z    |	|
|    Avg.tGravityAcc.std.X    |	|
|    Avg.tGravityAcc.std.Y    |	|
|    Avg.tGravityAcc.std.Z    |	|
|    Avg.tBodyAccJerk.mean.X    |	|
|    Avg.tBodyAccJerk.mean.Y    |	|
|    Avg.tBodyAccJerk.mean.Z    |	|
|    Avg.tBodyAccJerk.std.X    |	|
|    Avg.tBodyAccJerk.std.Y    |	|
|    Avg.tBodyAccJerk.std.Z    |	|
|    Avg.tBodyGyro.mean.X    |	|
|    Avg.tBodyGyro.mean.Y    |	|
|    Avg.tBodyGyro.mean.Z    |	|
|    Avg.tBodyGyro.std.X    |	|
|    Avg.tBodyGyro.std.Y    |	|
|    Avg.tBodyGyro.std.Z    |	|
|    Avg.tBodyGyroJerk.mean.X    |	|
|    Avg.tBodyGyroJerk.mean.Y    |	|
|    Avg.tBodyGyroJerk.mean.Z    |	|
|    Avg.tBodyGyroJerk.std.X    |	|
|    Avg.tBodyGyroJerk.std.Y    |	|
|    Avg.tBodyGyroJerk.std.Z    |	|
|    Avg.tBodyAccMag.mean    |	|
|    Avg.tBodyAccMag.std    |	|
|    Avg.tGravityAccMag.mean    |	|
|    Avg.tGravityAccMag.std    |	|
|    Avg.tBodyAccJerkMag.mean    |	|
|    Avg.tBodyAccJerkMag.std    |	|
|    Avg.tBodyGyroMag.mean    |	|
|    Avg.tBodyGyroMag.std    |	|
|    Avg.tBodyGyroJerkMag.mean    |	|
|    Avg.tBodyGyroJerkMag.std    |	|
|    Avg.fBodyAcc.mean.X    |	|
|    Avg.fBodyAcc.mean.Y    |	|
|    Avg.fBodyAcc.mean.Z    |	|
|    Avg.fBodyAcc.std.X    |	|
|    Avg.fBodyAcc.std.Y    |	|
|    Avg.fBodyAcc.std.Z    |	|
|    Avg.fBodyAcc.meanFreq.X    |	|
|    Avg.fBodyAcc.meanFreq.Y    |	|
|    Avg.fBodyAcc.meanFreq.Z    |	|
|    Avg.fBodyAccJerk.mean.X    |	|
|    Avg.fBodyAccJerk.mean.Y    |	|
|    Avg.fBodyAccJerk.mean.Z    |	|
|    Avg.fBodyAccJerk.std.X    |	|
|    Avg.fBodyAccJerk.std.Y    |	|
|    Avg.fBodyAccJerk.std.Z    |	|
|    Avg.fBodyAccJerk.meanFreq.X    |	|
|    Avg.fBodyAccJerk.meanFreq.Y    |	|
|    Avg.fBodyAccJerk.meanFreq.Z    |	|
|    Avg.fBodyGyro.mean.X    |	|
|    Avg.fBodyGyro.mean.Y    |	|
|    Avg.fBodyGyro.mean.Z    |	|
|    Avg.fBodyGyro.std.X    |	|
|    Avg.fBodyGyro.std.Y    |	|
|    Avg.fBodyGyro.std.Z    |	|
|    Avg.fBodyGyro.meanFreq.X    |	|
|    Avg.fBodyGyro.meanFreq.Y    |	|
|    Avg.fBodyGyro.meanFreq.Z    |	|
|    Avg.fBodyAccMag.mean    |	|
|    Avg.fBodyAccMag.std    |	|
|    Avg.fBodyAccMag.meanFreq    |	|
|    Avg.fBodyBodyAccJerkMag.mean    |	|
|    Avg.fBodyBodyAccJerkMag.std    |	|
|    Avg.fBodyBodyAccJerkMag.meanFreq    |	|
|    Avg.fBodyBodyGyroMag.mean    |	|
|    Avg.fBodyBodyGyroMag.std    |	|
|    Avg.fBodyBodyGyroMag.meanFreq    |	|
|    Avg.fBodyBodyGyroJerkMag.mean    |	|
|    Avg.fBodyBodyGyroJerkMag.std    |	|
|    Avg.fBodyBodyGyroJerkMag.meanFreq    |	|

