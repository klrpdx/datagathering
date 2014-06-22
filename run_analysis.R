## run_analysis.R - Imports and transforms the UCI HAR Dataset
## into a tidy dataset consisting of the average of each variable (means and standard deviations from
## the original dataset) for each subject and each activty.

activityLabels <- c("Walking"=1, "Walking Upstairs"=2, "Walking Downstairs"=3, "Sitting"=4, "Standing"=5, "Laying"=6)
subjects <- scan("UCI HAR Dataset/train/subject_train.txt")
activities <- scan("UCI HAR Dataset/train/y_train.txt")
features <- read.table("UCI HAR Dataset/features.txt")

# Get the column numbers only for mean and std (excluding meanFreq)
cols <- c(grep("mean\\(\\)|std\\(\\)", features$V2))
colNames <- features[cols,2]

//Get the text labels for the Activities
activitiesWithNames <- names(activityLabels)[match(activities, activityLabels)]

## Construct the dataframe for the training data
trainDF <- data.frame(Subject=subjects, Activity=activitiesWithNames);
train_x <- read.table("UCI HAR Dataset/train/X_train.txt")
train_x = train_x[ ,cols] #Retain only the columns we want
colnames(train_x) <- colNames

trainDF <- cbind(trainDF, train_x)

## Construct the dataframe for the test data
subjects <- scan("UCI HAR Dataset/test/subject_test.txt")
activities <- scan("UCI HAR Dataset/test/y_test.txt")
activitiesWithNames <- names(activityLabels)[match(activities, activityLabels)]
testDF <- data.frame(Subject=subjects, Activity=activitiesWithNames);
test_x <- read.table("UCI HAR Dataset/test/X_test.txt")
test_x = test_x[ ,cols]
colnames(test_x) <- colNames

testDF <- cbind(testDF, test_x)


##Combine the test and train data
completeDF <- rbind(trainDF, testDF)

##The tidy data is grouped by subject and activity with the average
##taken for all data for that activity
tidyDF <- ddply(completeDF,.(Subject, Activity),numcolwise(mean))

##Write the tidy file
write.table(tidyDF,"tidyData.txt")




