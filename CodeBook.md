# The run_analysis.R script creates tidy data from the original data

## Original Data
The data from experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

    * https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
    * Refer to the README.txt file for a full description
## Processed Data
 Two tidy data dataframes  were processed from the original data
 
 1. HumanActivityTidyDataset
 2. HumanActivityTidyDataset2

### HumanActivityTidyDataset

* The mean and std deviation of all features from the original data set was extracted and labeled
* The subject and activity for each of the variables was added
* The training and test data was combined

### HumanActivityTidyDataset2

* This dataset modifed the HumanActivityTidyDataset by taking an average of each variable for each activity and each subject





 


