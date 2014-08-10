<h1>"Getting and Cleaning Data" project</h1>

There is only one script necessary to run the analysis: run_analysis.R.
The following five transformation steps that run_analysis.R performs are described briefly below. More information can be found in the commented R file itself.

Make sure the working directory is set to the UCI HAR Dataset folder by using setwd with a string depending on your local settings, e.g. setwd("/Users/Patrick/Documents/DataScience/Rpro/data/cleaningData/UCI HAR Dataset").


<h4>1. Merges the training and the test sets to create one data set.</h4>
The merged data frames are labeled "_merge" and are combined from the test and train data frames.
Some memory is freed up by deleting data frames not used for the analysis anymore.

<h4>2. Extracts only the measurements on the mean and standard deviation for each measurement.</h4>
Mean and standard expressions are filtered using regular expressions.

<h4>3. Uses descriptive activity names to name the activities in the data set.</v>
Activity names are used from activity_labels.txt, which provides a mapping table to the numeric codes.

<h4>4. Appropriately labels the data set with descriptive variable names.</h4>
The appropriately labelled data sets are merged.

<h4>5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.</h4>
The calculation is performed by two for loops. One runs though persons, the other through activities. A subset of the tidy data set is created where all entries match the specific person/activity-key. Then for all the columns the analytics are calculated and recorded in the final data set, which is then stored as tidy_dataset.txt. 


