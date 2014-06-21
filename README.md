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

#### Test & Train data set
The whole HAR study program use 30 people volunteer to perform the experiments. These individual are refered to as "subject". These subjects are devided into 'test' group and 'train' group. This result in 2 similar data sets. run_analysis.R combines test data set and train dat set together. 

#### Features
The term features has similar meaning as measures, thus it is being used interchangably. Details about features collected and pre-processed from HAR is described in the file "feature_info.txt" which is part of the source data zip file. 
The complete set of features contains 561 items and it list in this **features.txt** file. The order of features appears in features.txt will corresponding to the order of columns in each line of the **X_test.txt** or **X_train.txt** files. 
So the first data column of X_test.txt or X_train.txt is the first feature in feature.txt, the second data column is the second feature, and so on.

#### X_train and X_test
These files contains the actual data collected and pre-processed from the smartphones. It is fixed-width text file with 561 columns. It contains no column headings so the meaning of each column has to be cross-referenced with the **features.txt** file. 
Each line in X_train and X_test file contains data from a particular subject (volunteer individual) performs a particular activity (walking, sitting, etc) in a particular time-window. 
*More details about how the data has been collected can be found in the README file as part of original zip file from source data*
Each line in X data files is corresponding to each line of y data file and subject data file. For example, first line of data in X_test.txt is performed by subject refered to as first line subject id in subject_test.txt and performing activity id refered to as first line activity id in y_test.txt.

#### subject_train and subject_test
These files contains subject id which refer to individual who participate in the experiement. There are 30 of them, thus the id is ranging from 1-30. The subject file is text file with single data column ranging between 1-30. The order of the line data will corresponding to the X_train and X_test data file.

#### y_train and y_test
These file contains acivity id which refer to activity that the subject perform for each data line in corresponding X_train and X_test file. There are 6 types of activity, thus the id is ranging between 1-6. The meaning of each activity id is describes in **activity_labels.txt** file.

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
#### Overview
As describes in project description, here is the requirements for run_analysis.R

	1. Merges the training and the test sets to create one data set.
	2. Extracts only the measurements on the mean and standard deviation for each measurement. 
	3. Uses descriptive activity names to name the activities in the data set
	4. Appropriately labels the data set with descriptive variable names. 
	5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

#### Parameters
run_analysis does not require any parameter. However, it expects the source data to be available in the working directory according to detail in source data above.
#### Return 
run_analysis returns a data frame object that corresponding to the avg_output.csv structure. 
#### Output
run_analysis writes 2 csv text files into your working directory, see more detail on output data section above.
#### High level program flow
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

#### 1. Read data files into data objects
Use read.table command to read each of the file from its location into data.frame object with corresponding object name. The object names used in run_analysis.R are all in small caps with underscores.
There are 2 sets of files to be read. First are the data itself. Second are the 'reference' data, which is used to describes or decode the id/code in the actual data file.
##### **Data Files**
* y_test
* x_test
* subject_test
* x_train
* y_train
* subject_train
##### **Reference Files**
* activity_labels
* features

#### 2. Rename all the columns
Since there is no column names defined within the data file itself, run_analysis.R assigns column names into these files for easy reference.

| Data Frame |	Column Names	|
|---		|---		|
| subject_test | SubjectID | 
| y_test	| ActivityID |
| activity_lable | ActivityID, Activity |
| features | feature_id, feature_name |

Please note that there is no column name assignment for X_test and X_train. This will be dperform at the later steps after extracting only the needed measures.  

#### 3. Select only the features (measures) contains either means() or std()
As per project requirements, we don't nee the whole 561 measures in the output data set. We only need the measures with mean and standard deviation calculation. This means we can just extract the features that contains the word **mean()** or **std()** in their description. 
In order to do that, we will subsetting *feature* dataframe and creates another dataframe calls *selected_features*. We use the grepl function which take regualar expression as parameter. "mean()|std()". 
Dataframe *selected_features* now contains only about 79 features that has either mean() or std() as part of their name. *selected_features* still contains feature_id similar to those of *features*.

#### 4. Subsetting the main data file with selected measures
This step use *selected_features* to select only the needed column from the *x_train* and *x_test* data frame. The idea is to use *feature_id* column in *selected_features* which is corresponding to the column numbers in *x_train* and *x_test* to subsetting the x_test/train object and create new objects call *selected_x_test* and *selected_x_train*
In the same step, we also rename the column names of *selected_x_test/train* by using the *feature_name* column in *selected_feature* as new names for *selected_x_test/train* data frames.

#### 5. Combine X data and Y data together
This step use cbind function to column bind 3 dataframes together, subject, y, and x. The result is a dataframe which as first column as subject id (from subject), second column as activity id (from y), and the remaining 79 columns from X. Repeating this step two times, one for test data set, the other for train data set. 
Results are in *cbined_test* and *cbined_train*.

#### 6. Combine test data set and train data set
This step simply use rbind function to combine test data set and train data set together. This creates a large dataframe with the name of *all_data*.

#### 7. Replace activity code with activity description
Data in *all_data* object are still have activity id in second column. Which is not needed. We need the activity description instead. This step then merges *all_data* with *activity_labels* data frame using **merge** function. Since both *all_data* and *activity_labels* data contains the same column name of *ActivityID*, we use this as join column.
The output of this operation is assigned to new object calls *out_data*
We perform this merge operation **AFTER** the rbind and cbind operation is mainly because the merge operation changes the row order of the dataframe it operates on. If we merge before, we will mixing up all the row order.

#### 8. Sorting and rearrange the columns
Merge operation in previous step changes the column order as well as row order. This step sort data in *out_data* object by *SubjectID* and then by *ActivityID* using order function and subsetting. 
It then rearranges the columns in a way that first column is SubjectID, and second column is Activity (description) and drop the ActivityID column. The output of this rearrangement is stored in *output* dataframe.

#### 9. Rename coloumn names
Those 79 selected column names are inherit from original feature.txt file. While it serve the purpose of being somewhat descriptive enough, it contains major flaws that will make the subsequent usage of those column names difficult. Those column names contains **invalid** characters that can not be used programmatically later on. Those are parentheses and dash. 
This step rename all the column names in *output* dataframe with these rules:
* if column names contains parentheses, remove parenthese while keep other part the same. This is basically replacing parentheses with zero-lenght string.
* if column names contains dash (-), replace it with a dot (.)
This step uses gsub function applys to names of *output* dataframe.
10. Write output.csv file
11. Calculate average output
12. Rename column names of the average output
13. Write avg_output.csv file
