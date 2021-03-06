# GettingAndCleaningData
## A Tidy Data Project

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

Submitted artifacts include:

1. A tidy data set
2. The script used to produce the tidy data set
3. A code book that describes the variables, the data, and any transformations performed to clean up the data called CodeBook.md
4. This README.md explaining how everything works. 
 
One of the most exciting areas in all of data science right now is wearable computing - see for example this [article] (http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data used in this project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


The provided script called run_analysis.R does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 
## Execution
1. Clone the repository `git@github.com:mwanaa-nzeki/GettingAndCleaningData.git`
2. Download the [dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
3. Unzip the dataset and place the directory "UCI HAR Dataset" at the root of the cloned repository
4. Set the working directory to the cloned repository root directory
5. Source and run the script run_analysis.R 
6. On successful execution, a tidy and independent dataset is created in the file "tidyData.txt" located in your repository root directory
