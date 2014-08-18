### Introduction
  This document describes the variables, the data, and all the transformations that
have been performed to obtain the final dataset.

### About the original dataset
The dataset described in this document is created from the "Human Activity Recognition
Using Smartphones Data Set", which is fully described [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Features description
A full detailed description of the features can be found in `README.txt` and `features_info.txt` files in the original data set.

In short, the features selected for this dataset come from the accelerometer and
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ (time domain signals, therefore
prefix 't' to denote time) measured using in a Samsung Galaxy S II.  The acceleration
signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ
and tGravityAcc-XYZ).

  Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

  Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing
fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag,
fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

  From all these signals, a set of variables (described in the original dataset)
was estimated. The final dataset created in this project contains only those variables in the initial datasets which refer to measurements on the mean or the standard deviation.

  In order to make the variable names a bit cleaner, the parenthesis after mean()
and std() in the original data sets variables, have been removed and the minus signs
have been wether replaced with points if found in the middle of a name, or removed
if found at the end of a variable name.

  Besides these measurements, the final dataset provides two additional columns:  
  
* activity, contains a descriptive name for the activity beeing performed by the subject.
Can be one of the following: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS,
WALKING_UPSTAIRS.  

* subject, numeric identifier, ranging from 1 to 30, corresponding to the subject
who carries out the experiment.

### Data Transformations
1. Activity data sets (y_xxx.txt) and subject data sets (subject_xxx.txt) have
been added as new columns (i.e. variables) to the measurements data sets (X_xxx.txt).

2. Training and test sets have been merged to create only one dataset.

3. For each of the measurements provided in the initial data sets, only the measurements
on the mean and standard deviation have been extracted.

4. Variable names in the final data set have been given descriptive variable names. These
names have been read from `features.txt`, then cleaned, removing parenthesis and
replacing minus signs with points, which is a more common format used in R.

5. Activities in the final data set have been assigned descriptive names. These
names have been read from the file `activity_labels.txt` and linked then with the
final dataset.

  
