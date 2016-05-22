# datasciencecoursera

======================================================
Code Book for Getting and Cleaning Data Course Project
======================================================

------
--Data
------

This repo contains two relevant datasets: FullData.csv and SummarizedData.csv.

-----------------
--Data Processing
-----------------

--FullData.csv
This data pulls into a single dataset each of the data files contained here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The script processes the data by:
1. Downloading the data from the website to a working directory.
2. Unzipping the data.
3. Importing the data into R.  This step also includes checking the dimensions of the imported data.
4. Applying column names to the test and training sets.
5. Merging the training and test data sets.  This includes adding descriptive activity names to the dataset.
6. Extracting mean and standard deviation variables from the overall dataset.
7. Labeling each column with appropriate, intuitive labels (using regular expressions).

--SummarizedData.csv
8. Beyond the steps listed above, this dataset finds the average of all numeric fields in the dataset by activity and subject.

-----------------------
--Variables (Code Book)
-----------------------

--FullData.csv
Below are descriptions of the variables contained within FullData.csv.
activity - Activity Description
mean.time.body.accelerometer.X - Equivalent to tBodyAcc-mean()-X
mean.time.body.accelerometer.Y - Equivalent to tBodyAcc-mean()-Y
mean.time.body.accelerometer.Z - Equivalent to tBodyAcc-mean()-Z
std.time.body.accelerometer.X - Equivalent to tBodyAcc-std()-X
std.time.body.accelerometer.Y - Equivalent to tBodyAcc-std()-Y
std.time.body.accelerometer.Z - Equivalent to tBodyAcc-std()-Z
mean.time.gravity.accelerometer.X - Equivalent to tGravityAcc-mean()-X
mean.time.gravity.accelerometer.Y - Equivalent to tGravityAcc-mean()-Y
mean.time.gravity.accelerometer.Z - Equivalent to tGravityAcc-mean()-Z
std.time.gravity.accelerometer.X - Equivalent to tGravityAcc-std()-X
std.time.gravity.accelerometer.Y - Equivalent to tGravityAcc-std()-Y
std.time.gravity.accelerometer.Z - Equivalent to tGravityAcc-std()-Z
mean.time.body.accelerometer.jerk.X - Equivalent to tBodyAccJerk-mean()-X
mean.time.body.accelerometer.jerk.Y - Equivalent to tBodyAccJerk-mean()-Y
mean.time.body.accelerometer.jerk.Z - Equivalent to tBodyAccJerk-mean()-Z
std.time.body.accelerometer.jerk.X - Equivalent to tBodyAccJerk-std()-X
std.time.body.accelerometer.jerk.Y - Equivalent to tBodyAccJerk-std()-Y
std.time.body.accelerometer.jerk.Z - Equivalent to tBodyAccJerk-std()-Z
mean.time.body.gyroscope.X - Equivalent to tBodyGyro-mean()-X
mean.time.body.gyroscope.Y - Equivalent to tBodyGyro-mean()-Y
mean.time.body.gyroscope.Z - Equivalent to tBodyGyro-mean()-Z
std.time.body.gyroscope.X - Equivalent to tBodyGyro-std()-X
std.time.body.gyroscope.Y - Equivalent to tBodyGyro-std()-Y
std.time.body.gyroscope.Z - Equivalent to tBodyGyro-std()-Z
mean.time.body.gyroscope.jerk.X - Equivalent to tBodyGyroJerk-mean()-X
mean.time.body.gyroscope.jerk.Y - Equivalent to tBodyGyroJerk-mean()-Y
mean.time.body.gyroscope.jerk.Z - Equivalent to tBodyGyroJerk-mean()-Z
std.time.body.gyroscope.jerk.X - Equivalent to tBodyGyroJerk-std()-X
std.time.body.gyroscope.jerk.Y - Equivalent to tBodyGyroJerk-std()-Y
std.time.body.gyroscope.jerk.Z - Equivalent to tBodyGyroJerk-std()-Z
mean.time.body.accelerometerMagnitude - Equivalent to tBodyAccMag-mean()
std.time.body.accelerometerMagnitude - Equivalent to tBodyAccMag-std()
mean.time.gravity.accelerometerMagnitude - Equivalent to tGravityAccMag-mean()
std.time.gravity.accelerometerMagnitude - Equivalent to tGravityAccMag-std()
mean.time.body.accelerometer.jerk - Equivalent to tBodyAccJerkMag-mean()
std.time.body.accelerometer.jerk - Equivalent to tBodyAccJerkMag-std()
mean.time.body.gyroscopeMagnitude - Equivalent to tBodyGyroMag-mean()
std.time.body.gyroscopeMagnitude - Equivalent to tBodyGyroMag-std()
mean.time.body.gyroscope.jerk - Equivalent to tBodyGyroJerkMag-mean()
std.time.body.gyroscope.jerk - Equivalent to tBodyGyroJerkMag-std()
mean.frequency.body.accelerometer.X - Equivalent to fBodyAcc-mean()-X
mean.frequency.body.accelerometer.Y - Equivalent to fBodyAcc-mean()-Y
mean.frequency.body.accelerometer.Z - Equivalent to fBodyAcc-mean()-Z
std.frequency.body.accelerometer.X - Equivalent to fBodyAcc-std()-X
std.frequency.body.accelerometer.Y - Equivalent to fBodyAcc-std()-Y
std.frequency.body.accelerometer.Z - Equivalent to fBodyAcc-std()-Z
meanFreq.frequency.body.accelerometer.X - Equivalent to fBodyAcc-meanFreq()-X
meanFreq.frequency.body.accelerometer.Y - Equivalent to fBodyAcc-meanFreq()-Y
meanFreq.frequency.body.accelerometer.Z - Equivalent to fBodyAcc-meanFreq()-Z
mean.frequency.body.accelerometer.jerk.X - Equivalent to fBodyAccJerk-mean()-X
mean.frequency.body.accelerometer.jerk.Y - Equivalent to fBodyAccJerk-mean()-Y
mean.frequency.body.accelerometer.jerk.Z - Equivalent to fBodyAccJerk-mean()-Z
std.frequency.body.accelerometer.jerk.X - Equivalent to fBodyAccJerk-std()-X
std.frequency.body.accelerometer.jerk.Y - Equivalent to fBodyAccJerk-std()-Y
std.frequency.body.accelerometer.jerk.Z - Equivalent to fBodyAccJerk-std()-Z
meanFreq.frequency.body.accelerometer.jerk.X - Equivalent to fBodyAccJerk-meanFreq()-X
meanFreq.frequency.body.accelerometer.jerk.Y - Equivalent to fBodyAccJerk-meanFreq()-Y
meanFreq.frequency.body.accelerometer.jerk.Z - Equivalent to fBodyAccJerk-meanFreq()-Z
mean.frequency.body.gyroscope.X - Equivalent to fBodyGyro-mean()-X
mean.frequency.body.gyroscope.Y - Equivalent to fBodyGyro-mean()-Y
mean.frequency.body.gyroscope.Z - Equivalent to fBodyGyro-mean()-Z
std.frequency.body.gyroscope.X - Equivalent to fBodyGyro-std()-X
std.frequency.body.gyroscope.Y - Equivalent to fBodyGyro-std()-Y
std.frequency.body.gyroscope.Z - Equivalent to fBodyGyro-std()-Z
meanFreq.frequency.body.gyroscope.X - Equivalent to fBodyGyro-meanFreq()-X
meanFreq.frequency.body.gyroscope.Y - Equivalent to fBodyGyro-meanFreq()-Y
meanFreq.frequency.body.gyroscope.Z - Equivalent to fBodyGyro-meanFreq()-Z
mean.frequency.body.accelerometerMagnitude - Equivalent to fBodyAccMag-mean()
std.frequency.body.accelerometerMagnitude - Equivalent to fBodyAccMag-std()
meanFreq.frequency.body.accelerometerMagnitude - Equivalent to fBodyAccMag-meanFreq()
mean.frequency.body.accelerometer.jerk - Equivalent to fBodyBodyAccJerkMag-mean()
std.frequency.body.accelerometer.jerk - Equivalent to fBodyBodyAccJerkMag-std()
meanFreq.frequency.body.accelerometer.jerk - Equivalent to fBodyBodyAccJerkMag-meanFreq()
mean.frequency.body.gyroscopeMagnitude - Equivalent to fBodyBodyGyroMag-mean()
std.frequency.body.gyroscopeMagnitude - Equivalent to fBodyBodyGyroMag-std()
meanFreq.frequency.body.gyroscopeMagnitude - Equivalent to fBodyBodyGyroMag-meanFreq()
mean.frequency.body.gyroscope.jerk - Equivalent to fBodyBodyGyroJerkMag-mean()
std.frequency.body.gyroscope.jerk - Equivalent to fBodyBodyGyroJerkMag-std()
meanFreq.frequency.body.gyroscope.jerk - Equivalent to fBodyBodyGyroJerkMag-meanFreq()


--SummarizedData.csv
Below are descriptions of the variables contained within SummarizedData.csv.

subject.id - ID for a subject
activity - Activity Description
mean.time.body.accelerometer.X - Mean value of mean.time.body.accelerometer.X
mean.time.body.accelerometer.Y - Mean value of mean.time.body.accelerometer.Y
mean.time.body.accelerometer.Z - Mean value of mean.time.body.accelerometer.Z
std.time.body.accelerometer.X - Standard Deviation of std.time.body.accelerometer.X
std.time.body.accelerometer.Y - Standard Deviation of std.time.body.accelerometer.Y
std.time.body.accelerometer.Z - Standard Deviation of std.time.body.accelerometer.Z
mean.time.gravity.accelerometer.X - Mean value of mean.time.gravity.accelerometer.X
mean.time.gravity.accelerometer.Y - Mean value of mean.time.gravity.accelerometer.Y
mean.time.gravity.accelerometer.Z - Mean value of mean.time.gravity.accelerometer.Z
std.time.gravity.accelerometer.X - Standard Deviation of std.time.gravity.accelerometer.X
std.time.gravity.accelerometer.Y - Standard Deviation of std.time.gravity.accelerometer.Y
std.time.gravity.accelerometer.Z - Standard Deviation of std.time.gravity.accelerometer.Z
mean.time.body.accelerometer.jerk.X - Mean value of mean.time.body.accelerometer.jerk.X
mean.time.body.accelerometer.jerk.Y - Mean value of mean.time.body.accelerometer.jerk.Y
mean.time.body.accelerometer.jerk.Z - Mean value of mean.time.body.accelerometer.jerk.Z
std.time.body.accelerometer.jerk.X - Standard Deviation of std.time.body.accelerometer.jerk.X
std.time.body.accelerometer.jerk.Y - Standard Deviation of std.time.body.accelerometer.jerk.Y
std.time.body.accelerometer.jerk.Z - Standard Deviation of std.time.body.accelerometer.jerk.Z
mean.time.body.gyroscope.X - Mean value of mean.time.body.gyroscope.X
mean.time.body.gyroscope.Y - Mean value of mean.time.body.gyroscope.Y
mean.time.body.gyroscope.Z - Mean value of mean.time.body.gyroscope.Z
std.time.body.gyroscope.X - Standard Deviation of std.time.body.gyroscope.X
std.time.body.gyroscope.Y - Standard Deviation of std.time.body.gyroscope.Y
std.time.body.gyroscope.Z - Standard Deviation of std.time.body.gyroscope.Z
mean.time.body.gyroscope.jerk.X - Mean value of mean.time.body.gyroscope.jerk.X
mean.time.body.gyroscope.jerk.Y - Mean value of mean.time.body.gyroscope.jerk.Y
mean.time.body.gyroscope.jerk.Z - Mean value of mean.time.body.gyroscope.jerk.Z
std.time.body.gyroscope.jerk.X - Standard Deviation of std.time.body.gyroscope.jerk.X
std.time.body.gyroscope.jerk.Y - Standard Deviation of std.time.body.gyroscope.jerk.Y
std.time.body.gyroscope.jerk.Z - Standard Deviation of std.time.body.gyroscope.jerk.Z
mean.time.body.accelerometerMagnitude - Mean value of mean.time.body.accelerometerMagnitude
std.time.body.accelerometerMagnitude - Standard Deviation of std.time.body.accelerometerMagnitude
mean.time.gravity.accelerometerMagnitude - Mean value of mean.time.gravity.accelerometerMagnitude
std.time.gravity.accelerometerMagnitude - Standard Deviation of std.time.gravity.accelerometerMagnitude
mean.time.body.accelerometer.jerk - Mean value of mean.time.body.accelerometer.jerk
std.time.body.accelerometer.jerk - Standard Deviation of std.time.body.accelerometer.jerk
mean.time.body.gyroscopeMagnitude - Mean value of mean.time.body.gyroscopeMagnitude
std.time.body.gyroscopeMagnitude - Standard Deviation of std.time.body.gyroscopeMagnitude
mean.time.body.gyroscope.jerk - Mean value of mean.time.body.gyroscope.jerk
std.time.body.gyroscope.jerk - Standard Deviation of std.time.body.gyroscope.jerk
mean.frequency.body.accelerometer.X - Mean value of mean.frequency.body.accelerometer.X
mean.frequency.body.accelerometer.Y - Mean value of mean.frequency.body.accelerometer.Y
mean.frequency.body.accelerometer.Z - Mean value of mean.frequency.body.accelerometer.Z
std.frequency.body.accelerometer.X - Standard Deviation of std.frequency.body.accelerometer.X
std.frequency.body.accelerometer.Y - Standard Deviation of std.frequency.body.accelerometer.Y
std.frequency.body.accelerometer.Z - Standard Deviation of std.frequency.body.accelerometer.Z
meanFreq.frequency.body.accelerometer.X - Mean value of meanFreq.frequency.body.accelerometer.X
meanFreq.frequency.body.accelerometer.Y - Mean value of meanFreq.frequency.body.accelerometer.Y
meanFreq.frequency.body.accelerometer.Z - Mean value of meanFreq.frequency.body.accelerometer.Z
mean.frequency.body.accelerometer.jerk.X - Mean value of mean.frequency.body.accelerometer.jerk.X
mean.frequency.body.accelerometer.jerk.Y - Mean value of mean.frequency.body.accelerometer.jerk.Y
mean.frequency.body.accelerometer.jerk.Z - Mean value of mean.frequency.body.accelerometer.jerk.Z
std.frequency.body.accelerometer.jerk.X - Standard Deviation of std.frequency.body.accelerometer.jerk.X
std.frequency.body.accelerometer.jerk.Y - Standard Deviation of std.frequency.body.accelerometer.jerk.Y
std.frequency.body.accelerometer.jerk.Z - Standard Deviation of std.frequency.body.accelerometer.jerk.Z
meanFreq.frequency.body.accelerometer.jerk.X - Mean value of meanFreq.frequency.body.accelerometer.jerk.X
meanFreq.frequency.body.accelerometer.jerk.Y - Mean value of meanFreq.frequency.body.accelerometer.jerk.Y
meanFreq.frequency.body.accelerometer.jerk.Z - Mean value of meanFreq.frequency.body.accelerometer.jerk.Z
mean.frequency.body.gyroscope.X - Mean value of mean.frequency.body.gyroscope.X
mean.frequency.body.gyroscope.Y - Mean value of mean.frequency.body.gyroscope.Y
mean.frequency.body.gyroscope.Z - Mean value of mean.frequency.body.gyroscope.Z
std.frequency.body.gyroscope.X - Standard Deviation of std.frequency.body.gyroscope.X
std.frequency.body.gyroscope.Y - Standard Deviation of std.frequency.body.gyroscope.Y
std.frequency.body.gyroscope.Z - Standard Deviation of std.frequency.body.gyroscope.Z
meanFreq.frequency.body.gyroscope.X - Mean value of meanFreq.frequency.body.gyroscope.X
meanFreq.frequency.body.gyroscope.Y - Mean value of meanFreq.frequency.body.gyroscope.Y
meanFreq.frequency.body.gyroscope.Z - Mean value of meanFreq.frequency.body.gyroscope.Z
mean.frequency.body.accelerometerMagnitude - Mean value of mean.frequency.body.accelerometerMagnitude
std.frequency.body.accelerometerMagnitude - Standard Deviation of std.frequency.body.accelerometerMagnitude
meanFreq.frequency.body.accelerometerMagnitude - Mean value of meanFreq.frequency.body.accelerometerMagnitude
mean.frequency.body.accelerometer.jerk - Mean value of mean.frequency.body.accelerometer.jerk
std.frequency.body.accelerometer.jerk - Standard Deviation of std.frequency.body.accelerometer.jerk
meanFreq.frequency.body.accelerometer.jerk - Mean value of meanFreq.frequency.body.accelerometer.jerk
mean.frequency.body.gyroscopeMagnitude - Mean value of mean.frequency.body.gyroscopeMagnitude
std.frequency.body.gyroscopeMagnitude - Standard Deviation of std.frequency.body.gyroscopeMagnitude
meanFreq.frequency.body.gyroscopeMagnitude - Mean value of meanFreq.frequency.body.gyroscopeMagnitude
mean.frequency.body.gyroscope.jerk - Mean value of mean.frequency.body.gyroscope.jerk
std.frequency.body.gyroscope.jerk - Standard Deviation of std.frequency.body.gyroscope.jerk
meanFreq.frequency.body.gyroscope.jerk - Mean value of meanFreq.frequency.body.gyroscope.jerk
