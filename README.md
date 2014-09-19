#Getting and Cleaning Data Course Project

## Getting Data
### dataset.zip
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Cleaning Data
### run_analysis.R does the following:
*    Download data and load data in R
*    Merges the training and the test sets to create one data set.
*    Extracts only the measurements on the mean and standard deviation for each measurement. 
*    Uses descriptive activity names to name the activities in the data set
*    Appropriately labels the data set with descriptive variable names. 
*    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### CodeBook.md:
describes the variables, the data, and the work to clean up the data