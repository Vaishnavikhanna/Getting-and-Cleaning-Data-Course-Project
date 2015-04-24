# CodeBook for tidyDataSet.txt
[Variables from column 1 to column 3](#Variables)<br/>
[Data after column 3](#Data)<br/> 
[Steps to clean up the data](#Steps)


<a name="Variables"/>
- Variables from column 1 to column 3 
  - **Test_Or_Train**
    - 70% of the volunteers was selected for generating the training data and 30% the test data
      - Test: 9 volunteers
      - Train: 21 volunteers
  - **Subject**
    - 30 volunteers within an age bracket of 19-48 years.
    - From 1 to 30
  - **Labels**
    - Six activities each volunteer performed
      - WALKING
      - WALKING_UPSTAIRS
      - WALKING_DOWNSTAIRS
      - SITTING
      - STANDING
      - LAYING


<a name="Data"/>
- Data after column 3 is the avearge value for every item below 
    - tBodyAcc-mean()-X
    - tBodyAcc-mean()-Y
    - tBodyAcc-mean()-Z
    - tBodyAcc-std()-X
    - tBodyAcc-std()-Y
    - tBodyAcc-std()-Z
    - tGravityAcc-mean()-X
    - tGravityAcc-mean()-Y
    - tGravityAcc-mean()-Z
    - tGravityAcc-std()-X
    - tGravityAcc-std()-Y
    - tGravityAcc-std()-Z
    - tBodyAccJerk-mean()-X
    - tBodyAccJerk-mean()-Y
    - tBodyAccJerk-mean()-Z
    - tBodyAccJerk-std()-X
    - tBodyAccJerk-std()-Y
    - tBodyAccJerk-std()-Z
    - tBodyGyro-mean()-X
    - tBodyGyro-mean()-Y
    - tBodyGyro-mean()-Z
    - tBodyGyro-std()-X
    - tBodyGyro-std()-Y
    - tBodyGyro-std()-Z
    - tBodyGyroJerk-mean()-X
    - tBodyGyroJerk-mean()-Y
    - tBodyGyroJerk-mean()-Z
    - tBodyGyroJerk-std()-X
    - tBodyGyroJerk-std()-Y
    - tBodyGyroJerk-std()-Z
    - tBodyAccMag-mean()
    - tBodyAccMag-std()
    - tGravityAccMag-mean()
    - tGravityAccMag-std()
    - tBodyAccJerkMag-mean()
    - tBodyAccJerkMag-std()
    - tBodyGyroMag-mean()
    - tBodyGyroMag-std()
    - tBodyGyroJerkMag-mean()
    - tBodyGyroJerkMag-std()
    - fBodyAcc-mean()-X
    - fBodyAcc-mean()-Y
    - fBodyAcc-mean()-Z
    - fBodyAcc-std()-X
    - fBodyAcc-std()-Y
    - fBodyAcc-std()-Z
    - fBodyAccJerk-mean()-X
    - fBodyAccJerk-mean()-Y
    - fBodyAccJerk-mean()-Z
    - fBodyAccJerk-std()-X
    - fBodyAccJerk-std()-Y
    - fBodyAccJerk-std()-Z
    - fBodyGyro-mean()-X
    - fBodyGyro-mean()-Y
    - fBodyGyro-mean()-Z
    - fBodyGyro-std()-X
    - fBodyGyro-std()-Y
    - fBodyGyro-std()-Z
    - fBodyAccMag-mean()
    - fBodyAccMag-std()
    - fBodyBodyAccJerkMag-mean()
    - fBodyBodyAccJerkMag-std()
    - fBodyBodyGyroMag-mean()
    - fBodyBodyGyroMag-std()
    - fBodyBodyGyroJerkMag-mean()
    - fBodyBodyGyroJerkMag-std()

<a name="Steps"/>
- Steps to clean up the data
  - Merges the training and the test sets to create one data set
  - Labels the data set with descriptive variable names, including assigning every column a name according to its measure based on the file `features.txt` 
  - Extracts only the measurements on the mean and standard deviation for each measurement
  - Computes the average of each variable for each activity and each subject
  - Uses descriptive activity names to name the activities in the data set
  - Gives additional column to label "Train" or "Test" according to the subjects
  - Save the final data set as a .txt file, `tidyDataSet.txt`
