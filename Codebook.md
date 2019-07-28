# Data Dictionary - Human Activity Recognition Using Smartphones Data Set

# Activity labels
act_code: Activity Code
    1 WALKING
    2 WALKING_UPSTAIRS
    3 WALKING_DOWNSTAIRS
    4 SITTING
    5 STANDING
    6 LAYING
act_desc: Activity Description
    
# Feature information
- The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelerometer-XYZ and timeGyroscope-XYZ.
- The acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer-XYZ and timeGravityAccelerometer-XYZ) 
- The body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(timeBodyAccelerometerJerk-XYZ and BodyGyroscopeJerk-XYZ)
- The magnitude of these three-dimensional signals were calculated 
using the Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerk, timeBodyGyroscopeMagnitude, timeBodyAccelerometerJerkMagnitude)
- A Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerometer-XYZ, 
frequencyBodyAccelerometerJerk-XYZ, frequencyBodyGyroscope-XYZ, frequencyBodyAccelerometerJerkMagnitude, frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude. 
- These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z direction:

timeBodyAccelerometer-XYZ            
timeGravityAccelerometer-XYZ          
timeBodyAccelerometerJerk-XYZ        
timeBodyGyroscope-XYZ                   
timeBodyGyroscopeJerk-XYZ        
timeBodyAccelerometerMagnitude
timeGravityAccelerometerMagnitude
timeBodyAccelerometerJerkMagnitude
timeBodyGyroscopeMagnitude  
timeBodyGyroscopeJerkMagnitude
frequencyBodyAccelerometer-XYZ
frequencyBodyAccelerometerJerk-XYZ
frequencyBodyGyroscope-XYZ
frequencyBodyAccelerometerMagnitude
frequencyBodyAccelerometerJerkMagnitude
frequencyBodyGyroscopeMagnitude
frequencyBodyGyroscopeJerkMagnitude
    
- The set of variables that were estimated from these signals are: 
mean(): Mean value
std(): Standard deviation






