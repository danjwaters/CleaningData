# CleaningData

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the run_analysis.R script:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Download and unzip the data to your current working directy 

The run_analysis.R script modifes the supplied data to create two tidy data sets 

The following describes the items are completed in the script:

Creates the HumanActivityTidyDataset by completing:

    * Merges the training and the test sets to create one data set.
    * Extracts only the measurements on the mean and standard deviation for each measurement. 
    * Uses descriptive activity names to name the activities in the data set
    * Appropriately labels the data set with descriptive variable names. 

Creates the HumanActivityTidyDataset2 by completing:

    * From HumanActivityTidyDataset, creates an independent tidy data set with the average of each variable for each activity and each subject.
