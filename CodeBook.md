# CodeBook for tidyDataSet.txt
[*Steps To Clean Up The Data*](#Steps)<br/>
[*Variables From Column 1 To Column 3*](#Variables)<br/>
[*Variables After Column 3*](#Data)<br/> 
[*Feature Selection*](#FeatureSelection)

***

<a name="Steps"/>
## *Steps To Clean Up The Data*
  1. Merges the training (`subject_train.txt`, `X_train.txt`, `y_train.txt`) and the test (`subject_test.txt`, `X_test.txt`, `y_test.txt`) sets to create one data set (`df`)
  2. Labels the data set with descriptive variable names, including assigning every column a name according to its measure based on the file `features.txt`
  3. Extracts only the measurements on the mean and standard deviation for each measurement (`dfEX`)
  4. Computes the average of each variable for each activity and each subject (`dfMean`)
  5. Uses descriptive activity names to name the activities in the data set (`dfTidy`)
  6. Gives additional column to label "Train" or "Test" according to the subjects (`dfTidy3`)
  7. Save the final data set as a .txt file (`tidyDataSet.txt`)


<a name="Variables"/>
## *Variables From Column 1 To Column 3*
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
## *Variables After Column 3*
- Variables After Column 3 Is The Avearge Value For Every Item Below
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

<a name="FeatureSelection"/>
## Feature Selection
- The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

- Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

- Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

- These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
