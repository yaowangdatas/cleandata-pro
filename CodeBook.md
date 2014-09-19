#CodeBook


##Original data:

* [source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

* [description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
 

##Dataset

The dataset includes the following files:

* 'README.txt'

* 'features_info.txt': Shows information about the variables used on the feature vector.

* 'features.txt': List of all features.

* 'activity_labels.txt': Links the class labels with their activity name.

* 'train/X_train.txt': Training set.

* 'train/y_train.txt': Training labels.

* 'test/X_test.txt': Test set.

* 'test/y_test.txt': Test labels.

* 'train/subject_train.txt' and 'test/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

* ...

Notes: 

* Features are normalized and bounded within [-1,1].
* Each feature vector is a row on the text file.


## Works of script run_analysis.R

Step 1: Download data and load data in R

Step 2: Label the columns of train set and test set by features. 

Step 3: Change the activity id to activity name

Step 4: name activity and subject

Step 5: Bind all train variables in file 'train', and bind all test variables in file 'test'

Step 6: Merges the 'train' and the 'test' sets to create one data set 'total'

Step 7: Extracts only the measurements on the mean and standard deviation for each measurement

STep 8: From the data set "extractdata", creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Step 9: Write 'tidydata' into 'tidydata.txt' file
