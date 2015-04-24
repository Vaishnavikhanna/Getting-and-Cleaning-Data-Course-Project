# CodeBook for tidyDataSet.txt
[*Variables From Column 1 To Column 3*](#Variables)<br/>
[*Data After Column 3*](#Data)<br/> 
[*Steps To Clean Up The Data*](#Steps)<br/>

***

<a name="Variables"/>
- *Variables From Column 1 To Column 3*
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
- *Data After Column 3 Is The Avearge Value For Every Item Below*
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
- *Steps To Clean Up The Data*
  1. Merges the training and the test sets to create one data set
  2. Labels the data set with descriptive variable names, including assigning every column a name according to its measure based on the file `features.txt`
  3. Extracts only the measurements on the mean and standard deviation for each measurement
  4. Computes the average of each variable for each activity and each subject
  5. Uses descriptive activity names to name the activities in the data set
  6. Gives additional column to label "Train" or "Test" according to the subjects
  7. Save the final data set as a .txt file, `tidyDataSet.txt`
