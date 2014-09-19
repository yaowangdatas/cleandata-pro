##Step 1
##download data
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile="./cleandata/project/dataset.zip", mode="wb")
unzip("./cleandata/project/dataset.zip")
##load data in R
library(data.table)
library(reshape2)
##'features.txt': List of all features.
features <- read.table("./UCI HAR Dataset/features.txt")
##'activity_labels.txt': Links the class labels with their activity name.
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
##'train/X_train.txt': Training set.
trainx <- read.table("./UCI HAR Dataset/train/X_train.txt")
##'train/y_train.txt': Training labels.
trainy <- read.table("./UCI HAR Dataset/train/Y_train.txt")
##'test/X_test.txt': Test set.
testx <- read.table("./UCI HAR Dataset/test/X_test.txt")
##'test/y_test.txt': Test labels.
testy <- read.table("./UCI HAR Dataset/test/Y_test.txt")
##'subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")

##4. Label the train set and test set by features.
## Step2: name the columns by features 
names(trainx) <- features[,2]
names(testx) <- features[,2]

##3. Uses descriptive activity names to name the activities in the data set
##Step 3: change the activity id to activity name
trainy[,1] <- activity_labels[trainy[,1],2]
testy[,1] <- activity_labels[testy[,1],2]

##Step 4:name activity and subject
names(trainy) <- "activity"
names(testy) <- "activity"
names(train_subject) <- "subject"
names(test_subject) <- "subject"

## Step5 : bind all train variables in one file, 
##         and bind all test variables in one file
train <- cbind(train_subject,trainy,trainx)
test <- cbind(test_subject,testy,testx)

##Step 6:
##1. Merges the training and the test sets to create one data set.
total <- rbind(train,test)

##2. Extracts only the measurements on the mean and standard deviation for each measurement. 
extract <- grepl("mean|std",features[,2])
extract_column <- c(TRUE, TRUE, extract)
extractdata <- total[,extract_column]

##5. From the data set "extractdata", creates a second, independent tidy data
##  set with the average of each variable for each activity and each subject.
measure <- features[extract, 2]
meltdata <- melt(extractdata, id=c("subject","activity"), measure.vars=measure)
tidydata <- dcast(meltdata, subject + activity ~ variable, mean)
write.table(tidydata, file="./cleandata/project/tidydata.txt", 
            sep="\t",row.names=F)