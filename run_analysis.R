# This script:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the 
#    average of each variable for each activity and each subject.

# Set prerequisite packages 
packages <- c("data.table", "reshape2")
sapply(packages, require, character.only = TRUE, quietly = TRUE)

# Read activity labels
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]

# Read variable names
features <- read.table("./UCI HAR Dataset/features.txt")[,2]

# Create list of mean and standard deviation features
targetFeatures <- grepl("mean\\(\\)|std\\(\\)", features)

# Read in training test data sets
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
# Apply colum names to X data set
names(X_test) = features

# Extract only the measurements on the mean and standard deviation for each measurement.
X_test = X_test[, targetFeatures]

# Apply colum names to test and subject data sets
y_test[,2] <- activityLabels[y_test[,1]]
names(y_test) <- c("ActivityNum", "ActivityLabel")
names(subject_test) <- "Subject"

# Bind test column data
test_data <- cbind(as.data.table(subject_test), y_test, X_test)

# Read in training test data sets
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
#Apply colum names to training data set
names(X_train) <- features

# Extract only the measurements on the mean and standard deviation for each measurement.
X_train <- X_train[, targetFeatures]

# Apply colum names to training and subject data sets
y_train[,2] <- activity_labels[y_train[,1]]
names(y_train) <- c("ActivityNum", "ActivityLabel")
names(subject_train) <- "Subject"

# Bind training column data
train_data <- cbind(as.data.table(subject_train), y_train, X_train)

# Merge rows in test and training data
data <- rbind(test_data, train_data)

numLabels   <- c("Subject", "ActivityNum", "ActivityLabel")
dataLabels <- setdiff(colnames(data), numLabels)
dataMelt <- melt(data, id = numLabels, measure.vars = dataLabels)

# Apply mean function to dataset using dcast function
tidyData <- dcast(dataMelt, Subject + ActivityLabel ~ variable, mean)

write.table(tidyData, file = "./tidyData.txt", row.names = FALSE)

