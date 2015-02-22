# The run_analysis.R script creates tidy data from the original data

## Original
The data from experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

    * https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
    *Refer to the README.txt file for


The raw dataset was created using the following regular expression to filter out required features, eg. the measurements on the mean and standard deviation for each measurement from the original feature vector set

-(mean|std)\\(

This regular expression selects 66 features from the original data set. Combined with subject identifiers subject and activity labels label, this makes up the 68 variables of the processed raw data set.

The training and test subsets of the original dataset were combined to produce final raw dataset.
Tidy data set

Tidy data set contains the average of all feature standard deviation and mean values of the raw dataset. Original variable names were modified in the follonwing way
