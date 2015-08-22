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
Below are the mean and standard deviation variable names in the tidy dataset:

1. Subject
2. ActivityLabel                  
3. TimeBodyAccelerometerMean()-X                 
4. TimeBodyAccelerometerMean()-Y                
5. TimeBodyAccelerometerMean()-Z                 
6. TimeBodyAccelerometerSTD()-X                 
7. TimeBodyAccelerometerSTD()-Y                  
8. TimeBodyAccelerometerSTD()-Z                 
9. TimeGravityAccelerometerMean()-X              
10. TimeGravityAccelerometerMean()-Y             
11. TimeGravityAccelerometerMean()-Z              
12. TimeGravityAccelerometerSTD()-X              
13. TimeGravityAccelerometerSTD()-Y               
14. TimeGravityAccelerometerSTD()-Z              
15. TimeBodyAccelerometerJerkMean()-X             
16. TimeBodyAccelerometerJerkMean()-Y            
17. TimeBodyAccelerometerJerkMean()-Z             
18. TimeBodyAccelerometerJerkSTD()-X             
19. TimeBodyAccelerometerJerkSTD()-Y              
20. TimeBodyAccelerometerJerkSTD()-Z             
21. TimeBodyGyroscopeMean()-X                     
22. TimeBodyGyroscopeMean()-Y                    
23. TimeBodyGyroscopeMean()-Z                     
24. TimeBodyGyroscopeSTD()-X                     
25. TimeBodyGyroscopeSTD()-Y                      
26. TimeBodyGyroscopeSTD()-Z                     
27. TimeBodyGyroscopeJerkMean()-X                 
28. TimeBodyGyroscopeJerkMean()-Y                
29. TimeBodyGyroscopeJerkMean()-Z                 
30. TimeBodyGyroscopeJerkSTD()-X                 
31. TimeBodyGyroscopeJerkSTD()-Y                  
32. TimeBodyGyroscopeJerkSTD()-Z                 
33. TimeBodyAccelerometerMagnitudeMean()          
34. TimeBodyAccelerometerMagnitudeSTD()          
35. TimeGravityAccelerometerMagnitudeMean()       
36. TimeGravityAccelerometerMagnitudeSTD()       
37. TimeBodyAccelerometerJerkMagnitudeMean()      
38. TimeBodyAccelerometerJerkMagnitudeSTD()     
39. TimeBodyGyroscopeMagnitudeMean()              
40. TimeBodyGyroscopeMagnitudeSTD()          
41. TimeBodyGyroscopeJerkMagnitudeMean()          
42. TimeBodyGyroscopeJerkMagnitudeSTD()          
43. FrequencyBodyAccelerometerMean()-X            
44. FrequencyBodyAccelerometerMean()-Y           
45. FrequencyBodyAccelerometerMean()-Z            
46. FrequencyBodyAccelerometerSTD()-X            
47. FrequencyBodyAccelerometerSTD()-Y             
48. FrequencyBodyAccelerometerSTD()-Z            
49. FrequencyBodyAccelerometerJerkMean()-X        
50. FrequencyBodyAccelerometerJerkMean()-Y       
51. FrequencyBodyAccelerometerJerkMean()-Z        
52. FrequencyBodyAccelerometerJerkSTD()-X        
53. FrequencyBodyAccelerometerJerkSTD()-Y         
54. FrequencyBodyAccelerometerJerkSTD()-Z        
55. FrequencyBodyGyroscopeMean()-X                
56. FrequencyBodyGyroscopeMean()-Y               
57. FrequencyBodyGyroscopeMean()-Z                
58. FrequencyBodyGyroscopeSTD()-X                
59. FrequencyBodyGyroscopeSTD()-Y                 
60. FrequencyBodyGyroscopeSTD()-Z      
61. FrequencyBodyGyroscopeMagnitudeMean()         
62. FrequencyBodyGyroscopeMagnitudeSTD()         
63. FrequencyBodyGyroscopeJerkMagnitudeMean()     
64. FrequencyBodyGyroscopeJerkMagnitudeSTD() 
65. FrequencyBodyAccelerometerMagnitudeMean()     
66. FrequencyBodyAccelerometerMagnitudeSTD()
67. FrequencyBodyAccelerometerJerkMagnitudeSTD()
68. FrequencyBodyAccelerometerJerkMagnitudeMean()
