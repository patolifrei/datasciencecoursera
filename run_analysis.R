# make sure the working directory is set to the UCI HAR Dataset folder!
setwd("/Users/Patrick/Documents/DataScience/Rpro/data/cleaningData/UCI HAR Dataset")

# 1. Merges the training and the test sets to create one data set
X_train<-read.table("train/X_train.txt")
X_test<-read.table("test/X_test.txt")
X_merge<-rbind(X_train,X_test)

Y_train<-read.table("train/Y_train.txt")
Y_test<-read.table("test/Y_test.txt")
Y_merge<-rbind(Y_train,Y_test)

subject_train<-read.table("train/subject_train.txt")
subject_test<-read.table("test/subject_test.txt")
subject_merge<-rbind(subject_train,subject_test)

# free up memory by removing temporary data loads
rm(X_train)
rm(X_test)
rm(Y_train)
rm(Y_test)
rm(subject_train)
rm(subject_test)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement
features<-read.table("features.txt") # features holds the column names for the X_merge
names(X_merge)<-features[,2]
cols_mean<-grep("-mean\\(", features[,2])
cols_std<-grep("-std\\(", features[,2])
cols_select<-c(cols_mean,cols_std) # set of columns for the tidy data set
X_merge <- X_merge[cols_select] # only keep mean and standard deviation columns

# 3. Uses descriptive activity names to name the activities in the data set
activity_labels<-read.table("activity_labels.txt")
Y_merge <- activity_labels[Y_merge[,1],2]
names(Y_merge)<-"activity"

# 4. Appropriately labels the data set with descriptive variable names
names(subject_merge)<-"person"
tidyDataSet<-cbind(subject_merge, Y_merge, X_merge)
names(tidyDataSet)[2]<-paste("activity") # change "Y_merge" default to meaningful "activity" name
write.table(tidyDataSet, "tidy_dataset_cleaning.txt")

# 5. Creates a second, independent tidy data set with the average of each 
#    variable for each activity and each subject

num_Persons <- length(unique(subject_merge)[,1]) # integer value indicates number of persons
num_Activity <- length(activity_labels[,1]) # integer value indicates number of activities

persons_id <- unique(subject_merge)[,1] # list of person numbers as persons might not be numbered
                                        # 1 to num_Persons


tidyDataSet2<-tidyDataSet[0,] # new tidy data set, holding means and std devs by each activity/subject pair
                              # same column structure as the first tidy data set, but no row entries yet
row_index<-1 # current row for writing data
for (r in 1:num_Persons) {
    for (c in 1:num_Activity) {
        tidyDataSet2[row_index,1]<-r
        tidyDataSet2[row_index,2]<-activity_labels[c,2]
        filter<-tidyDataSet[tidyDataSet$person==r & tidyDataSet$activity==activity_labels[c,2],] # filter data for specific
                                                                                                 # persion/activity-pair
        for (i in 1:(length(tidyDataSet)-2)) {
            tidyDataSet2[row_index,i+2]<-mean(filter[,(i+2)])
        }
        row_index<-row_index + 1 
    }
}
write.table(tidyDataSet2, "tidy_dataset.txt")