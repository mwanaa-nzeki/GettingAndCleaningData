# Code Book

This code book describes the variables, data, and transformations performed to clean up accelerometer data from the Samsung Galaxy S II smartphone.

## <a name="getDataset">Getting the dataset</a>
Dataset description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Dataset location: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Dataset Summary
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.
 
The following files are available for the train and test data. Their descriptions are equivalent: 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 
 
## Dataset Transformation
The following transformations are applied to the dataset:

1. The training and test sets are merged to create one dataset
2. Only the measurements on the mean and standard deviation are extracted
3. Descriptive activity names are used to name activities in the dataset
4. The dataset is approriately labeled with descriptive variable names
5. A second tidy and independent dataset is created with the average of each variable for each activity and each subject.

## Variable Names
Below are the variable names in the tidy dataset:

Subject                                       
ActivityLabel                                
TimeBodyAccelerometerMean()-X                 
TimeBodyAccelerometerMean()-Y                
TimeBodyAccelerometerMean()-Z                 
TimeBodyAccelerometerSTD()-X                 
TimeBodyAccelerometerSTD()-Y                  
TimeBodyAccelerometerSTD()-Z                 
TimeGravityAccelerometerMean()-X              
TimeGravityAccelerometerMean()-Y             
TimeGravityAccelerometerMean()-Z              
TimeGravityAccelerometerSTD()-X              
TimeGravityAccelerometerSTD()-Y               
TimeGravityAccelerometerSTD()-Z              
TimeBodyAccelerometerJerkMean()-X             
TimeBodyAccelerometerJerkMean()-Y            
TimeBodyAccelerometerJerkMean()-Z             
TimeBodyAccelerometerJerkSTD()-X             
TimeBodyAccelerometerJerkSTD()-Y              
TimeBodyAccelerometerJerkSTD()-Z             
TimeBodyGyroscopeMean()-X                     
TimeBodyGyroscopeMean()-Y                    
TimeBodyGyroscopeMean()-Z                     
TimeBodyGyroscopeSTD()-X                     
TimeBodyGyroscopeSTD()-Y                      
TimeBodyGyroscopeSTD()-Z                     
TimeBodyGyroscopeJerkMean()-X                 
TimeBodyGyroscopeJerkMean()-Y                
TimeBodyGyroscopeJerkMean()-Z                 
TimeBodyGyroscopeJerkSTD()-X                 
TimeBodyGyroscopeJerkSTD()-Y                  
TimeBodyGyroscopeJerkSTD()-Z                 
TimeBodyAccelerometerMagnitudeMean()          
TimeBodyAccelerometerMagnitudeSTD()          
TimeGravityAccelerometerMagnitudeMean()       
TimeGravityAccelerometerMagnitudeSTD()       
TimeBodyAccelerometerJerkMagnitudeMean()      
TimeBodyAccelerometerJerkMagnitudeSTD()      
TimeBodyGyroscopeMagnitudeMean()              
TimeBodyGyroscopeMagnitudeSTD()              
TimeBodyGyroscopeJerkMagnitudeMean()          
TimeBodyGyroscopeJerkMagnitudeSTD()          
FrequencyBodyAccelerometerMean()-X            
FrequencyBodyAccelerometerMean()-Y           
FrequencyBodyAccelerometerMean()-Z            
FrequencyBodyAccelerometerSTD()-X            
FrequencyBodyAccelerometerSTD()-Y             
FrequencyBodyAccelerometerSTD()-Z            
FrequencyBodyAccelerometerJerkMean()-X        
FrequencyBodyAccelerometerJerkMean()-Y       
FrequencyBodyAccelerometerJerkMean()-Z        
FrequencyBodyAccelerometerJerkSTD()-X        
FrequencyBodyAccelerometerJerkSTD()-Y         
FrequencyBodyAccelerometerJerkSTD()-Z        
FrequencyBodyGyroscopeMean()-X                
FrequencyBodyGyroscopeMean()-Y               
FrequencyBodyGyroscopeMean()-Z                
FrequencyBodyGyroscopeSTD()-X                
FrequencyBodyGyroscopeSTD()-Y                 
FrequencyBodyGyroscopeSTD()-Z                
FrequencyBodyAccelerometerMagnitudeMean()     
FrequencyBodyAccelerometerMagnitudeSTD()     
FrequencyBodyAccelerometerJerkMagnitudeMean()
FrequencyBodyAccelerometerJerkMagnitudeSTD()
FrequencyBodyGyroscopeMagnitudeMean()         
FrequencyBodyGyroscopeMagnitudeSTD()         
FrequencyBodyGyroscopeJerkMagnitudeMean()     
FrequencyBodyGyroscopeJerkMagnitudeSTD() 
