# run_analysis.R does the following:

# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names. 

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Readin Features as the column variables
features <- read.table('UCI HAR Dataset/features.txt')
columns<- features[,2]
# Identify columns having mean and std deviation
meanStdColumns <- grep("-mean\\(\\)|-std\\(\\)",columns)

#Read in the activity
activities <- read.table('UCI HAR Dataset/activity_labels.txt')

# Label training data
trainingData <- read.table("UCI HAR Dataset/train/X_train.txt")
colnames(trainingData)<-columns
trainingDataMnStd <- trainingData[,meanStdColumns]
trainingActivity <- read.table("UCI HAR Dataset/train/y_train.txt")
colnames(trainingActivity) <- 'activity'
trainingActivity[,1]=activities[trainingActivity[,1],2]
trainingDatawActivities <-cbind(trainingActivity, trainingDataMnStd)
trainingSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
colnames(trainingSubjects) <- 'subject'
trainingDatawSubjectsActivities<-cbind(trainingSubjects,trainingDatawActivities)

# Label test data
testData <- read.table("UCI HAR Dataset/test/X_test.txt")
colnames(testData)<-columns
testDataMnStd <- testData[,meanStdColumns]
testActivity <- read.table("UCI HAR Dataset/test/y_test.txt")
testActivity[,1]=activities[testActivity[,1],2]
colnames(testActivity) <- 'activity'
testDatawActivities <-cbind(testActivity, testDataMnStd)
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
colnames(testSubjects) <- 'subject'
testDatawSubjectsActivities<-cbind(testSubjects,testDatawActivities)

# Combine training and test data sets with data labels
HumanActivityTidyDataset <- rbind(trainingDatawSubjectsActivities,testDatawSubjectsActivities)

#Create 2nd data set that takes average of each variable for each activity and each subject
HumanActivityTidyDataset2 <- aggregate(HumanActivityTidyDataset[,-c(1:2)], by=list(HumanActivityTidyDataset$subject, HumanActivityTidyDataset$activity),mean)
colnames(HumanActivityTidyDataset2)[1:2] <- c("subject", "activity")
