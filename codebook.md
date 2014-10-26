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

1	subject

2	activity

3	body.acceleration.mean.time.x

4	body.acceleration.mean.time.y

5	body.acceleration.mean.time.z

6	gravity.acceleration.mean.time.x

7	gravity.acceleration.mean.time.y

8	gravity.acceleration.mean.time.z

9	body.acceleration.jerk.mean.time.x

10	body.acceleration.jerk.mean.time.y

11	body.acceleration.jerk.mean.time.z

12	body.gyro.mean.time.x

13	body.gyro.mean.time.y

14	body.gyro.mean.time.z

15	body.gyro.jerk.mean.time.x

16	body.gyro.jerk.mean.time.y

17	body.gyro.jerk.mean.time.z

18	body.acceleration.magnitude.mean.time

19	gravity.acceleration.magnitude.mean.time

20	body.acceleration.jerk.magnitude.mean.time

21	body.gyro.magnitude.mean.time

22	body.gyro.jerk.magnitude.mean.time

23	body.acceleration.mean.frequency.x

24	body.acceleration.mean.frequency.y

25	body.acceleration.mean.frequency.z

26	body.acceleration.jerk.mean.frequency.x

27	body.acceleration.jerk.mean.frequency.y

28	body.acceleration.jerk.mean.frequency.z

29	body.gyro.mean.frequency.x

30	body.gyro.mean.frequency.y

31	body.gyro.mean.frequency.z

32	body.acceleration.magnitude.mean.frequency

33	body.accel.jerk.magnitude.mean.frequency

34	body.gyro.magnitude.mean.frequency

35	body.gyro.jerk.magnitude.mean.frequency

36	body.acceleration.std.time.x

37	body.acceleration.std.time.y

38	body.acceleration.std.time.z

39	gravity.acceleration.std.time.x

40	gravity.acceleration.std.time.y

41	gravity.acceleration.std.time.z

42	body.acceleration.jerk.std.time.x

43	body.acceleration.jerk.std.time.y

44	body.acceleration.jerk.std.time.z

45	body.gyro.std.time.x

46	body.gyro.std.time.y

47	body.gyro.std.time.z

48	body.gyro.jerk.std.time.x

49	body.gyro.jerk.std.time.y

50	body.gyro.jerk.std.time.z

51	body.acceleration.magnitude.std.time

52	gravity.acceleration.magnitude.std.time

53	body.acceleration.jerk.magnitude.std.time

54	body.gyro.magnitude.std.time

55	body.gyro.jerk.magnitude.std.time

56	body.acceleration.std.frequency.x

57	body.acceleration.std.frequency.y

58	body.acceleration.std.frequency.z

59	body.acceleration.jerk.std.frequency.x

60	body.acceleration.jerk.std.frequency.y

61	body.acceleration.jerk.std.frequency.z

62	body.gyro.std.frequency.x

63	body.gyro.std.frequency.y

64	body.gyro.std.frequency.z

65	body.acceleration.magnitude.std.frequency

66	body.accel.jerk.magnitude.std.frequency

67	body.gyro.magnitude.std.frequency

68	body.gyro.jerk.magnitude.std.frequency