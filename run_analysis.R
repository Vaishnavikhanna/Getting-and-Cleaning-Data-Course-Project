

# Step(1) Merges the training and the test sets to create one data set.
subjecttrainDF <- read.table('./UCI HAR Dataset/train/subject_train.txt', stringsAsFactors = F)
XtrainDF <- read.table('./UCI HAR Dataset/train/X_train.txt', stringsAsFactors = F) 
ytrainDF <- read.table('./UCI HAR Dataset/train/y_train.txt', stringsAsFactors = F)
trainDF <- cbind(subjecttrainDF, ytrainDF, XtrainDF)

subjecttestDF <- read.table('./UCI HAR Dataset/test/subject_test.txt', stringsAsFactors = F)
XtestDF <- read.table('./UCI HAR Dataset/test/X_test.txt', stringsAsFactors = F)
ytestDF <- read.table('./UCI HAR Dataset/test/y_test.txt', stringsAsFactors = F)
testDF <- cbind(subjecttestDF, ytestDF, XtestDF)

df <- rbind(trainDF, testDF)



# Step(4) Appropriately labels the data set with descriptive variable names.
## assign every column a name according to its measure based on the file "features"
features <- read.table('./UCI HAR Dataset/features.txt', stringsAsFactors = F)
for (i in 1:nrow(features)) {
    colnames(df)[i + 2] <- features[i,2]
}
colnames(df)[1] <- "Subject"  ## give a column name "subject"
colnames(df)[2] <- "Labels"       ## give a column name "labels"


# Step(2) Extracts only the measurements on the mean and standard deviation for each measurement.
dfEX <- cbind(df[,1:8], df[,43:48], df[,83:88], df[,123:128], df[,163:168], df[,203:204],
              df[,216:217], df[,229:230], df[,242:243], df[,255:256], df[,268:273],
              df[,347:352], df[,426:431], df[,505:506], df[,518:519], df[,531:532], df[,544:545])



# Step(5) creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
s <- split(dfEX, list(dfEX$Labels, dfEX$Subject))
dfMean <- lapply(s, colMeans)   ## means
dfMean <- data.frame(dfMean)
dfMean <- t(dfMean)
dfMean <- data.frame(dfMean)
rownames(dfMean) <- NULL


# Step(3) Uses descriptive activity names to name the activities in the data set
dfMean$Labels[dfMean$Labels == 1] <- "WALKING"
dfMean$Labels[dfMean$Labels == 2] <- "WALKING_UPSTAIRS"
dfMean$Labels[dfMean$Labels == 3] <- "WALKING_DOWNSTAIRS"
dfMean$Labels[dfMean$Labels == 4] <- "SITTING"
dfMean$Labels[dfMean$Labels == 5] <- "STANDING"
dfMean$Labels[dfMean$Labels == 6] <- "LAYING"

dfTidy <- dfMean


# Give additional column to label "Train" or "Test"

subjectNotRepeat = unique(subjecttrainDF[,1])
dfok <- cbind(dfMean[1], dfMean)
colnames(dfok)[1] <- "Test_Or_Train"
dfTidy2 <- within(dfok, { 
    Test_Or_Train <- ifelse(Test_Or_Train %in% c(subjectNotRepeat), "Train", "Test") 
})

library(plyr)
dfTidy3 <- arrange(dfTidy2, Test_Or_Train, Subject)


write.table(dfTidy3, file = "./data/tidyDataSet.txt", row.name=FALSE)
# data <- read.table("./data/tidyDataSet.txt", header = TRUE) 
# View(data)



# dfMean <- sapply(s, function(x) colMeans(x[, 3:ncol(x)]))
# ## compute mean for each measure
# s <- split(dfEX, list(dfEX$volunteerID, dfEX$labels))
# x <- lapply(s, function(x) colMeans(x[, 3:ncol(x)]))
# 
# dfMean <- data.frame(x)
# dfMean <- sapply(s, function(x) colMeans(x[, 3:ncol(x)]))
# dfMean <- sapply(s, colMeans)   ## means
# 
# dfMean <- t(dfMean)             ## transpose
# rownames(dfMean) <- NULL   ## delete row name
# dfMean <- data.frame(dfMean)



















