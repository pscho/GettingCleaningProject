## run_analysis.R
## Coursera - Getting and Cleaning Data Project

## reshape2 library is needed for creating the second tidy data set
library(reshape2)

## Download and unzip the dataset
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, "getdata_projectfiles_UCI HAR Dataset.zip", method = "curl")
unzip("getdata_projectfiles_UCI HAR Dataset.zip")

## Initially retrieve the individual datasets

test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test_x <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_y <- read.table("./UCI HAR Dataset/test/y_test.txt")

train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train_x <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_y <- read.table("./UCI HAR Dataset/train/y_train.txt")

## Also download the features
features <- read.table("./UCI HAR Dataset/features.txt")

## Combine the same train and test datasets
x <- rbind(test_x, train_x)
y <- rbind(test_y, train_y)
subject <- rbind(test_subject, train_subject)

## Assign variable names
# Retrieve variable names for the x dataset from the features list
xLabels <- c(as.character(features$V2))

colnames(x) <- xLabels
colnames(y) <- "activity"
colnames(subject) <- "subject"

## Extract only the mean and standard deviation measurements
# Find the variables for mean and standard deviation
meanCol <- grep("mean", colnames(x))
stdCol <- grep("std", colnames(x))

# Retrieve the mean and standard deviation columns
meanDat <- x[meanCol]
stdDat <- x[stdCol]

## Combine the datasets
combined = cbind(subject, y, meanDat, stdDat)

## Label the activity numbers with descriptions
combined$activity <- factor(combined$activity, 
                            levels = c(1,2,3,4,5,6), 
                            labels = c("WALKING", 
                                       "WALKING_UPSTAIRS", 
                                       "WALKING_DOWNSTAIRS", 
                                       "SITTING", 
                                       "STANDING", 
                                       "LAYING"))

## Create a second dataset with the average of the mean and std variables for each subject and each activity
# Melt the dataset
melted <- melt(combined, id = c("subject", "activity"), measure.vars = colnames(combined)[3:81])

# Retrieve the averages of the mean and std
tidy <- dcast(melted, subject + activity ~ variable, mean)

# Write the dataset
write.table(tidy, file = "tidy.txt", row.names = FALSE)