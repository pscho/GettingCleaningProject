Code Book for tidied UCI Dataset
================================

Raw Data Description
====================

The data is arranged in a text(.txt) file with headers of 68 variables and 180 observations. 
The raw data uses a comma delimiter.

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Variables
=========

1.	subject
   - The ID of the subject

2.	activity
   - The name of the activity

3.	body.acceleration.mean.time.x
   - Mean body acceleration time on the X-axis

4.	body.acceleration.mean.time.y
   - Mean body acceleration time on the Y-axis

5.	body.acceleration.mean.time.z
   - Mean body acceleration time on the Z-axis

6.	gravity.acceleration.mean.time.x
   - Mean gravity acceleration time on the X-axis

7.	gravity.acceleration.mean.time.y
   - Mean gravity acceleration time on the Y-axis

8.	gravity.acceleration.mean.time.z
   - Mean gravity acceleration time on the Z-axis

9.	body.acceleration.jerk.mean.time.x
   - Mean body jerk acceleration time on the X-axis

10.	body.acceleration.jerk.mean.time.y
   - Mean body jerk acceleration time on the Y-axis

11.	body.acceleration.jerk.mean.time.z
   - Mean body jerk acceleration time on the Z-axis
   
12.	body.gyro.mean.time.x
   - Mean body gyroscope time on the X-axis

13.	body.gyro.mean.time.y
   - Mean body gyroscope time on the Y-axis

14.	body.gyro.mean.time.z
   - Mean body gyroscope time on the Z-axis

15.	body.gyro.jerk.mean.time.x
   - Mean body gyroscope jerk time on the X-axis

16.	body.gyro.jerk.mean.time.y
   - Mean body gyroscope jerk time on the Y-axis

17.	body.gyro.jerk.mean.time.z
   - Mean body gyroscope jerk time on the Z-axis

18.	body.acceleration.magnitude.mean.time
   - Mean body acceleration magnitude time

19.	gravity.acceleration.magnitude.mean.time
   - Mean gravity acceleration magnitude time

20.	body.acceleration.jerk.magnitude.mean.time
   - Mean body acceleration jerk magnitude time

21.	body.gyro.magnitude.mean.time
   - Mean body gyroscope magnitude time

22.	body.gyro.jerk.magnitude.mean.time
   - Mean body gyroscope jerk magnitude time

23. body.acceleration.mean.frequency.x
   - Mean body acceleration frequency on the X-axis

24.	body.acceleration.mean.frequency.y
   - Mean body acceleration frequency on the Y-axis

25.	body.acceleration.mean.frequency.z
   - Mean body acceleration frequency on the Z-axis

26.	body.acceleration.jerk.mean.frequency.x
   - Mean body acceleration jerk frequency on the X-axis

27.	body.acceleration.jerk.mean.frequency.y
   - Mean body acceleration jerk frequency on the Y-axis

28.	body.acceleration.jerk.mean.frequency.z
   - Mean body acceleration jerk frequency on the Z-axis

29.	body.gyro.mean.frequency.x
   - Mean body gyroscope frequency on the X-axis

30.	body.gyro.mean.frequency.y
   - Mean body gyroscope frequency on the Y-axis

31.	body.gyro.mean.frequency.z
   - Mean body gyroscope frequency on the Z-axis

32.	body.acceleration.magnitude.mean.frequency
   - Mean body acceleration magnitude frequency 

33.	body.accel.jerk.magnitude.mean.frequency
   - Mean body acceleration jerk magnitude frequency

34.	body.gyro.magnitude.mean.frequency
   - Mean body gyroscope magnitude frequency

35.	body.gyro.jerk.magnitude.mean.frequency
   - Mean body gyroscope jerk magnitude frequency

36.	body.acceleration.std.time.x
   - Std of body acceleration time on the X-axis

37.	body.acceleration.std.time.y
   - Std of body acceleration time on the Y-axis

38.	body.acceleration.std.time.z
   - Std of body acceleration time on the Z-axis

39.	gravity.acceleration.std.time.x
   - Std of gravity acceleration time on the X-axis

40.	gravity.acceleration.std.time.y
   - Std of gravity acceleration time on the Y-axis

41.	gravity.acceleration.std.time.z
   - Std of gravity acceleration time on the Z-axis

42.	body.acceleration.jerk.std.time.x
   - Std of body acceleration jerk time on the X-axis

43.	body.acceleration.jerk.std.time.y
   - Std of body acceleration jerk time on the Y-axis

44.	body.acceleration.jerk.std.time.z
   - Std of body acceleration jerk time on the Z-axis

45.	body.gyro.std.time.x
   - Std of body gyroscope time on the X-axis

46.	body.gyro.std.time.y
   - Std of body gyroscope time on the Y-axis

47.	body.gyro.std.time.z
   - Std of body gyroscope time on the Z-axis

48.	body.gyro.jerk.std.time.x
   - Std of body gyroscope jerk time on the X-axis

49.	body.gyro.jerk.std.time.y
   - Std of body gyroscope jerk time on the Y-axis

50.	body.gyro.jerk.std.time.z
   - Std of body gyroscope jerk time on the Z-axis

51.	body.acceleration.magnitude.std.time
   - Std of body acceleration magnitude time

52.	gravity.acceleration.magnitude.std.time
   - Std of gravity acceleration magnitude time

53.	body.acceleration.jerk.magnitude.std.time
   - Std of body acceleration jerk magnitude time

54.	body.gyro.magnitude.std.time
   - Std of body gyroscope magnitude time

55.	body.gyro.jerk.magnitude.std.time
   - Std of body gyroscope jerk magnitude time

56.	body.acceleration.std.frequency.x
   - Std of body acceleration frequency on the X-axis

57.	body.acceleration.std.frequency.y
   - Std of body acceleration frequency on the Y-axis

58.	body.acceleration.std.frequency.z
   - Std of body acceleration frequency on the Z-axis

59.	body.acceleration.jerk.std.frequency.x
   - Std of body acceleration jerk frequency on the X-axis

60.	body.acceleration.jerk.std.frequency.y
   - Std of body acceleration jerk frequency on the Y-axis

61.	body.acceleration.jerk.std.frequency.z
   - Std of body acceleration jerk frequency on the Z-axis

62.	body.gyro.std.frequency.x
   - Std of body gyroscope frequency on the X-axis

63.	body.gyro.std.frequency.y
   - Std of body gyroscope frequency on the Y-axis

64.	body.gyro.std.frequency.z
   - Std of body gyroscope frequency on the Z-axis

65.	body.acceleration.magnitude.std.frequency
   - Std of body acceleration magnitude frequency
   
66. body.accel.jerk.magnitude.std.frequency
   - Std of body acceleration jerk magnitude frequency 
    
67. body.gyro.magnitude.std.frequency
   - Std of body gyroscope magnitude frequency

68.	body.gyro.jerk.magnitude.std.frequency
   - Std of body gyro jerk magnitude frequency
   