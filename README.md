This document is part of project work for "Getting & Cleaning Data" class offered by Coursera. 
Written by PanaEk Warawit on June 20, 2014. 

Project Location: [github.com/pwarawit/getdata_project](https://github.com/pwarawit/getdata_project/)

Overview
----------
This project aims to prepare a tidy data set from raw data called [Human Activity Recognition Using Smartphones Data Set](http:///archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). Using R Programming language as data preparation tool.

Contents
--------
These files are part of the repository.

| File	| Desciption	|
|---	|---		|
| run_analysis.R	| the R script to read and prepare data |
| README.md		| This file 	|
| CodeBook.md		| Data dictionary to explain the data output |
 
Source Data
--------------
You can download the source data from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). Unzip the content into your working directory. The run_analysis.R script expects to have these files & directory structure under your working directory.

| Directory	| File Name 	| Description	|
|---		| ---		|---	|
| . (working directory)	|	activity_labels.txt	| Contains the mapping between numeral activity code (1, 2,...) and actual activity description like WALKING. |
| . (working directory) |	features.txt		| Contains the list of all 561 features or measures presence in X data file. |
| ./train		|  y_train.txt	| Contains the activity id for train data set |
| ./train		|  X_train.txt	| Contains the measures for train data set |
| ./train		|  subject_train.txt 	| Contains the subject id for train data set | 
| ./test		|  y_test.txt	| Contains the activity id for test data set |
| ./test		| X_test.txt 	| Contains the measures for test data set |
| ./test		| suject_test.txt | Contains the subject id for test data set |

The content of zip file have more files and folders, but those are not required for run_analysis.R to perform. 

### Test & Train data set
The whole HAR study program use 30 people volunteer to perform the experiments. These individual are refered to as "subject". These subjects are devided into 'test' group and 'train' group. This result in 2 similar data sets. run_analysis.R combines test data set and train dat set together. 

### Features
The term features has similar meaning as measures, thus it is being used interchangably. Details about features collected and pre-processed from HAR is described in the file "feature_info.txt" which is part of the source data zip file. 
The complete set of features contains 561 items and it list in this **features.txt** file. The order of features appears in features.txt will corresponding to the order of columns in each line of the **X_test.txt** or **X_train.txt** files. 

Output Data
-----------
The script run_analysis.R generates 2 output text files in your working directory.

| File Name	| Description	|
|---		|---		|
| output.csv	| Detail combined data between train group and test group, selected only mean and standard deviation measures	| 
| avg_output.csv	| Aggregated data from detail combined data for average by subject and by activity for each measure	|

More detail explaination of output.csv and avg_output.csv data can be found in the CodeBook.

run_analysis.R
--------------
### Parameters
run_analysis does not require any parameter. However, it expects the source data to be available in the working directory according to detail in source data above.
### Return 
run_analysis returns a data frame object that corresponding to the avg_output.csv structure. 
### Output
run_analysis writes 2 csv text files into your working directory, see more detail on output data section above.
### High level program flow
1. Read data files into data objects
2. Rename all the columns
3. Select only the features (measures) contains either means() or std()
4. Subsetting the main data file with selected measures
5. Combine X data and Y data together
6. Combine test data set and train data set
7. Replace activity code with activity description
8. Sorting and rearrange the columns
9. Rename coloumn names
10. Write output.csv file
11. Calculate average output
12. Rename column names of the average output
13. Write avg_output.csv file
14. Return avg_output object


