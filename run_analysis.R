run_analysis <- function(){
    # run_analysis.R    
    # Written by PanaEk Warawit as part of Getting & Cleaning Data 
    # class project on Jun 20, 2014
    
    # Read all the 6 data files into data objects
    y_test <- read.table("./test/y_test.txt")
    x_test <- read.table("./test/X_test.txt")
    subject_test <- read.table("./test/subject_test.txt")
    y_train <- read.table("./train/y_train.txt")
    x_train <- read.table("./train/X_train.txt")
    subject_train <- read.table("./train/subject_train.txt")
    
    # Read 2 reference files into data objects
    activity_labels <- read.table("./activity_labels.txt")
    features <- read.table("./features.txt")
    
    # Rename all the needed columns for each of the objects except x_{test/train}
    names(subject_test) <- c("SubjectID")
    names(y_test) <- c("ActivityID")
    names(subject_train) <- c("SubjectID")
    names(y_train) <- c("ActivityID")
    names(activity_labels) <- c("ActivityID","Activity")
    names(features) <- c("feature_id", "feature_name")
    
    # Select only the features contains either means() or std()
    selected_features <- features[grepl("mean()|std()",features$feature_name),]
    
    # Subsetting x_{test/train} with selected_features and name it accordingly
    selected_x_test <- x_test[,selected_features$feature_id]
    names(selected_x_test) <- selected_features$feature_name
    selected_x_train <- x_train[,selected_features$feature_id]
    names(selected_x_train) <- selected_features$feature_name
    
    # Column bined both test & train 
    cbined_test <- cbind(subject_test, y_test, selected_x_test)
    cbined_train <- cbind(subject_train, y_train, selected_x_train)
    
    # Row-bind - to combine between test & train data set
    all_data <- rbind(cbined_test, cbined_train)
    
    # Merge with activity_labels to turn activityid to description
    out_data <- merge(all_data,activity_labels,by.x="ActivityID", by.y="ActivityID")
    
    # sorting & rearrange the columns
    out_data <- out_data[order(out_data$SubjectID, out_data$ActivityID),]
    output <- out_data[,c(2,82,3:81)]
    
    # Transform column names to eliminate ()- char
    names(output) <- gsub("\\(||\\)","",names(output))
    names(output) <- gsub("-",".",names(output))
        
    # write the output.csv file as csv text file
    write.table(output, "output.csv", quote=FALSE, row.names=FALSE, col.names=TRUE, sep=",")
    
    # create average output that average by subject, by activity for all the variables
    library(reshape2)
    output_melt <- melt(output, id=c("SubjectID","Activity"))
    avg_output <- dcast(output_melt, SubjectID + Activity ~ variable, mean)
    
    # Change all the features col names by prefix it with Avg.
    names(avg_output)[3:81] <- paste("Avg.", names(avg_output)[3:81], sep="")
    
    # write the avg_output.csv file 
    write.table(avg_output, "avg_output.csv", quote=FALSE, row.names=FALSE, col.names=TRUE, sep=",")
    
    # Return avg_output as result of this function
    avg_output

}
