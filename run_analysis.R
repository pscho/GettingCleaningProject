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
meanCol <- grep("mean[(][)]", colnames(x))
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
melted <- melt(combined, id = c("subject", "activity"), measure.vars = colnames(combined)[3:68])

# Retrieve the averages of the mean and std
tidy <- dcast(melted, subject + activity ~ variable, mean)

# Rename the tidy dataset variables
names(tidy) <- c("subject",
                 "activity",
                 "body.acceleration.mean.time.x",
                 "body.acceleration.mean.time.y",
                 "body.acceleration.mean.time.z",
                 "gravity.acceleration.mean.time.x",
                 "gravity.acceleration.mean.time.y",
                 "gravity.acceleration.mean.time.z",
                 "body.acceleration.jerk.mean.time.x",
                 "body.acceleration.jerk.mean.time.y",
                 "body.acceleration.jerk.mean.time.z",
                 "body.gyro.mean.time.x",
                 "body.gyro.mean.time.y",
                 "body.gyro.mean.time.z",
                 "body.gyro.jerk.mean.time.x",
                 "body.gyro.jerk.mean.time.y",
                 "body.gyro.jerk.mean.time.z",
                 "body.acceleration.magnitude.mean.time",
                 "gravity.acceleration.magnitude.mean.time",
                 "body.acceleration.jerk.magnitude.mean.time",
                 "body.gyro.magnitude.mean.time",
                 "body.gyro.jerk.magnitude.mean.time",
                 "body.acceleration.mean.frequency.x",
                 "body.acceleration.mean.frequency.y",
                 "body.acceleration.mean.frequency.z",
                 "body.acceleration.jerk.mean.frequency.x",
                 "body.acceleration.jerk.mean.frequency.y",
                 "body.acceleration.jerk.mean.frequency.z",
                 "body.gyro.mean.frequency.x",
                 "body.gyro.mean.frequency.y",
                 "body.gyro.mean.frequency.z",
                 "body.acceleration.magnitude.mean.frequency",
                 "body.accel.jerk.magnitude.mean.frequency",
                 "body.gyro.magnitude.mean.frequency",
                 "body.gyro.jerk.magnitude.mean.frequency",
                 "body.acceleration.std.time.x",
                 "body.acceleration.std.time.y",
                 "body.acceleration.std.time.z",
                 "gravity.acceleration.std.time.x",
                 "gravity.acceleration.std.time.y",
                 "gravity.acceleration.std.time.z",
                 "body.acceleration.jerk.std.time.x",
                 "body.acceleration.jerk.std.time.y",
                 "body.acceleration.jerk.std.time.z",
                 "body.gyro.std.time.x",
                 "body.gyro.std.time.y",
                 "body.gyro.std.time.z",
                 "body.gyro.jerk.std.time.x",
                 "body.gyro.jerk.std.time.y",
                 "body.gyro.jerk.std.time.z",
                 "body.acceleration.magnitude.std.time",
                 "gravity.acceleration.magnitude.std.time",
                 "body.acceleration.jerk.magnitude.std.time",
                 "body.gyro.magnitude.std.time",
                 "body.gyro.jerk.magnitude.std.time",
                 "body.acceleration.std.frequency.x",
                 "body.acceleration.std.frequency.y",
                 "body.acceleration.std.frequency.z",
                 "body.acceleration.jerk.std.frequency.x",
                 "body.acceleration.jerk.std.frequency.y",
                 "body.acceleration.jerk.std.frequency.z",
                 "body.gyro.std.frequency.x",
                 "body.gyro.std.frequency.y",
                 "body.gyro.std.frequency.z",
                 "body.acceleration.magnitude.std.frequency",
                 "body.accel.jerk.magnitude.std.frequency",
                 "body.gyro.magnitude.std.frequency",
                 "body.gyro.jerk.magnitude.std.frequency")


# Write the dataset
write.table(tidy, file = "tidy.txt", row.names = FALSE)