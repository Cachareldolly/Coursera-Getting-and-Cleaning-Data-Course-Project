This is the analysis of 30 people. To identify them we use 

subject : each subject is identified by a number

Activity_Labels : each subject is analysed while they are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING
                  and LAYING

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerometer-XYZ, frequencyBodyAccelerometerJerk-XYZ, frequencyBodyGyro-XYZ, frequencyBodyAccelerometerJerkMagnitude, frecuencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude.  

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

In tidy.txt you can find the average of each of this variables for each activity and subject:

                                   
 [3] "timeBodyAccelerometer-mean()-X"                     "timeBodyAccelerometer-mean()-Y"                    
 [5] "timeBodyAccelerometer-mean()-Z"                     "timeBodyAccelerometer-std()-X"                     
 [7] "timeBodyAccelerometer-std()-Y"                      "timeBodyAccelerometer-std()-Z"                     
 [9] "timeGravityAccelerometer-mean()-X"                  "timeGravityAccelerometer-mean()-Y"                 
[11] "timeGravityAccelerometer-mean()-Z"                  "timeGravityAccelerometer-std()-X"                  
[13] "timeGravityAccelerometer-std()-Y"                   "timeGravityAccelerometer-std()-Z"                  
[15] "timeBodyAccelerometerJerk-mean()-X"                 "timeBodyAccelerometerJerk-mean()-Y"                
[17] "timeBodyAccelerometerJerk-mean()-Z"                 "timeBodyAccelerometerJerk-std()-X"                 
[19] "timeBodyAccelerometerJerk-std()-Y"                  "timeBodyAccelerometerJerk-std()-Z"                 
[21] "timeBodyGyroscope-mean()-X"                         "timeBodyGyroscope-mean()-Y"                        
[23] "timeBodyGyroscope-mean()-Z"                         "timeBodyGyroscope-std()-X"                         
[25] "timeBodyGyroscope-std()-Y"                          "timeBodyGyroscope-std()-Z"                         
[27] "timeBodyGyroscopeJerk-mean()-X"                     "timeBodyGyroscopeJerk-mean()-Y"                    
[29] "timeBodyGyroscopeJerk-mean()-Z"                     "timeBodyGyroscopeJerk-std()-X"                     
[31] "timeBodyGyroscopeJerk-std()-Y"                      "timeBodyGyroscopeJerk-std()-Z"                     
[33] "timeBodyAccelerometerMagnitude-mean()"              "timeBodyAccelerometerMagnitude-std()"              
[35] "timeGravityAccelerometerMagnitude-mean()"           "timeGravityAccelerometerMagnitude-std()"           
[37] "timeBodyAccelerometerJerkMagnitude-mean()"          "timeBodyAccelerometerJerkMagnitude-std()"          
[39] "timeBodyGyroscopeMagnitude-mean()"                  "timeBodyGyroscopeMagnitude-std()"                  
[41] "timeBodyGyroscopeJerkMagnitude-mean()"              "timeBodyGyroscopeJerkMagnitude-std()"              
[43] "FrequencyBodyAccelerometer-mean()-X"                "FrequencyBodyAccelerometer-mean()-Y"               
[45] "FrequencyBodyAccelerometer-mean()-Z"                "FrequencyBodyAccelerometer-std()-X"                
[47] "FrequencyBodyAccelerometer-std()-Y"                 "FrequencyBodyAccelerometer-std()-Z"                
[49] "FrequencyBodyAccelerometer-meanFreq()-X"            "FrequencyBodyAccelerometer-meanFreq()-Y"           
[51] "FrequencyBodyAccelerometer-meanFreq()-Z"            "FrequencyBodyAccelerometerJerk-mean()-X"           
[53] "FrequencyBodyAccelerometerJerk-mean()-Y"            "FrequencyBodyAccelerometerJerk-mean()-Z"           
[55] "FrequencyBodyAccelerometerJerk-std()-X"             "FrequencyBodyAccelerometerJerk-std()-Y"            
[57] "FrequencyBodyAccelerometerJerk-std()-Z"             "FrequencyBodyAccelerometerJerk-meanFreq()-X"       
[59] "FrequencyBodyAccelerometerJerk-meanFreq()-Y"        "FrequencyBodyAccelerometerJerk-meanFreq()-Z"       
[61] "FrequencyBodyGyroscope-mean()-X"                    "FrequencyBodyGyroscope-mean()-Y"                   
[63] "FrequencyBodyGyroscope-mean()-Z"                    "FrequencyBodyGyroscope-std()-X"                    
[65] "FrequencyBodyGyroscope-std()-Y"                     "FrequencyBodyGyroscope-std()-Z"                    
[67] "FrequencyBodyGyroscope-meanFreq()-X"                "FrequencyBodyGyroscope-meanFreq()-Y"               
[69] "FrequencyBodyGyroscope-meanFreq()-Z"                "FrequencyBodyAccelerometerMagnitude-mean()"        
[71] "FrequencyBodyAccelerometerMagnitude-std()"          "FrequencyBodyAccelerometerMagnitude-meanFreq()"    
[73] "FrequencyBodyAccelerometerJerkMagnitude-mean()"     "FrequencyBodyAccelerometerJerkMagnitude-std()"     
[75] "FrequencyBodyAccelerometerJerkMagnitude-meanFreq()" "FrequencyBodyGyroscopeMagnitude-mean()"            
[77] "FrequencyBodyGyroscopeMagnitude-std()"              "FrequencyBodyGyroscopeMagnitude-meanFreq()"        
[79] "FrequencyBodyGyroscopeJerkMagnitude-mean()"         "FrequencyBodyGyroscopeJerkMagnitude-std()"         
[81] "FrequencyBodyGyroscopeJerkMagnitude-meanFreq()"     "angle(tBodyAccelerometerMean,gravity)"             
[83] "angle(tBodyAccelerometerJerkMean),gravityMean)"     "angle(tBodyGyroscopeMean,gravityMean)"             
[85] "angle(tBodyGyroscopeJerkMean,gravityMean)"          "angle(X,gravityMean)"                              
[87] "angle(Y,gravityMean)"                               "angle(Z,gravityMean)"                              
> 
