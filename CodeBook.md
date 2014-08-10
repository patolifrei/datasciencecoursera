<h1>CodeBook</h1>
This is the code book for the "Getting and Cleaning Data" project. It describes the variables, the data source and any transformations performed to clean up the data.
More details on transformations can be found in the README.md and in the comments provided in run_analysis.R.

<h2>The data source</h2>
The data source holding the original data
<ul>
<li> https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
</ul>

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. (source: README.txt, one of the files in the data set as listed below)

<h3>The dataset includes the following files:</h3>
<ul>
<li>'README.txt'

<li>'features_info.txt': Information about the variables used on the feature vector

<li>'features.txt': List of all features

<li>'activity_labels.txt': List of activity names with their respective code (integer number) for linking the activity names

<li>'train/X_train.txt': Training set.

<li>'train/Y_train.txt': Training labels

<li>'test/X_test.txt': Test set

<li>'test/Y_test.txt': Test labels
</ul>

<h3>Column names:</h3>
For the tidy data set, the following two column names have been created:
<ul>
<li> person: indicates the person number
<li> activity: persons' activity, e.g. WALKING
</ul>
The other variables have not been renamed and thus no matching table needs to be provided.
The following variables are in scope for this analysis:
<ul>
<li>tBodyAcc-mean()-X
<li>tBodyAcc-mean()-Y
<li>tBodyAcc-mean()-Z
<li>tGravityAcc-mean()-X
<li>tGravityAcc-mean()-Y
<li>tGravityAcc-mean()-Z
<li>tBodyAccJerk-mean()-X
<li>tBodyAccJerk-mean()-Y
<li>tBodyAccJerk-mean()-Z
<li>tBodyGyro-mean()-X
<li>tBodyGyro-mean()-Y
<li>tBodyGyro-mean()-Z
<li>tBodyGyroJerk-mean()-X
<li>tBodyGyroJerk-mean()-Y
<li>tBodyGyroJerk-mean()-Z
<li>tBodyAccMag-mean()
<li>tGravityAccMag-mean()
<li>tBodyAccJerkMag-mean()
<li>tBodyGyroMag-mean()
<li>tBodyGyroJerkMag-mean()
<li>fBodyAcc-mean()-X
<li>fBodyAcc-mean()-Y
<li>fBodyAcc-mean()-Z
<li>fBodyAccJerk-mean()-X
<li>fBodyAccJerk-mean()-Y
<li>fBodyAccJerk-mean()-Z
<li>fBodyGyro-mean()-X
<li>fBodyGyro-mean()-Y
<li>fBodyGyro-mean()-Z
<li>fBodyAccMag-mean()
<li>fBodyBodyAccJerkMag-mean()
<li>fBodyBodyGyroMag-mean()
<li>fBodyBodyGyroJerkMag-mean()
<li>tBodyAcc-std()-X
<li>tBodyAcc-std()-Y
<li>tBodyAcc-std()-Z
<li>tGravityAcc-std()-X
<li>tGravityAcc-std()-Y
<li>tGravityAcc-std()-Z
<li>tBodyAccJerk-std()-X
<li>tBodyAccJerk-std()-Y
<li>tBodyAccJerk-std()-Z
<li>tBodyGyro-std()-X
<li>tBodyGyro-std()-Y
<li>tBodyGyro-std()-Z
<li>tBodyGyroJerk-std()-X
<li>tBodyGyroJerk-std()-Y
<li>tBodyGyroJerk-std()-Z
<li>tBodyAccMag-std()
<li>tGravityAccMag-std()
<li>tBodyAccJerkMag-std()
<li>tBodyGyroMag-std()
<li>tBodyGyroJerkMag-std()
<li>fBodyAcc-std()-X
<li>fBodyAcc-std()-Y
<li>fBodyAcc-std()-Z
<li>fBodyAccJerk-std()-X
<li>fBodyAccJerk-std()-Y
<li>fBodyAccJerk-std()-Z
<li>fBodyGyro-std()-X
<li>fBodyGyro-std()-Y
<li>fBodyGyro-std()-Z
<li>fBodyAccMag-std()
<li>fBodyBodyAccJerkMag-std()
<li>fBodyBodyGyroMag-std()
<li>fBodyBodyGyroJerkMag-std()
</ul>

<h2>Transformation</h2>
<ol>
<li>Merges the training and the test sets to create one data set.
<li>Extracts only the measurements on the mean and standard deviation for each measurement. 
<li>Uses descriptive activity names to name the activities in the data set.
<li>Appropriately labels the data set with descriptive variable names. 
<li>Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
</ol>

<h2>How to run the script</h2>
<ul>
<li>Make sure the working directory is set to the UCI HAR Dataset folder.
<li>run the script: run_analysis.R
</ul>
