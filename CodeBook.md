# Course 03, Week 04: Course Project Code Book

##Human Activity Recognition Using Smartphones Dataset
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Notes:
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.


## Tidy 2 Data
### Input Files
* activity_labels.txt   - links the class labels with their activity name

* features.txt  -   list of all features

* subject_train.txt -   row identifies the subject who performed the activity for each window sample, range is from 1 to 30, training set

* X_train.txt    -   sensor data, training set

* Y_train.txt   -   activity data, training set

* subject_test.txt  -   row identifies the subject who performed the activity for each window sample, range is from 1 to 30, test set

* X_test.txt    -   sensor data, test set

* Y_test.txt    -   activity data, test set

### Output File
* tidy2_data.txt (described below)

#### Variables
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc...XYZ and tGyro...XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc...XYZ and tGravityAcc...XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk...XYZ and tBodyGyroJerk...XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc...XYZ, fBodyAccJerk...XYZ, fBodyGyro...XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'...XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

##### Mean Values
* tBodyAcc.mean...XYZ   (example: tBodyAcc.mean...X for x-axis signal)
* tGravityAcc.mean...XYZ
* tBodyAccJerk.mean...XYZ
* tBodyGyro.mean...XYZ
* tBodyGyroJerk.mean...XYZ
* tBodyAccMag.mean...Mean
* tGravityAccMag.mean
* tBodyAccJerkMag.mean
* tBodyGyroMag.mean
* tBodyGyroJerkMag.mean
* fBodyAcc.mean...XYZ
* fBodyAccJerk.mean...XYZ
* fBodyGyro.mean...XYZ
* fBodyAccMag.mean
* fBodyAccJerkMag.mean
* fBodyGyroMag.mean
* fBodyGyroJerkMag.mean

##### Standard Deviation
* tBodyAcc.std...XYZ   (example: tBodyAcc.std...X for x-axis signal)
* tGravityAcc.std...XYZ
* tBodyAccJerk.std...XYZ
* tBodyGyro.std...XYZ
* tBodyGyroJerk.std...XYZ
* tBodyAccMag.std
* tGravityAccMag.std
* tBodyAccJerkMag.std
* tBodyGyroMag.std
* tBodyGyroJerkMag.std
* fBodyAcc.std...XYZ
* fBodyAccJerk.std...XYZ
* fBodyGyro.std...XYZ
* fBodyAccMag.std
* fBodyAccJerkMag.std
* fBodyGyroMag.std
* fBodyGyroJerkMag.std

##### Labels
* ActivityName  -   activities performed by person (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

* SubjectCode   -   identification code for subject who performed the activity for each window sample (range is from 1 to 30)


#### Transformations
##### Training Data
* create descriptive feature column names with r-acceptable naming convention and append to sensor data

* merge descriptive activity names/labels to activity activity data (ActivityName field)

* combine subject identification code to sensor data (SubjectCode field)

* combine activity data to sensor data

##### Test Data
* create descriptive feature column names with r-acceptable naming convention and append to sensor data

* merge descriptive activity names/labels to activity activity data (ActivityName field)

* combine subject identification code to sensor data (SubjectCode field)

* combine activity data to sensor data

##### Complete Data
* combine training data and test data into one set

* group by activity and subject

* calculate means for sensor data with activity and sensor data

* rename column names for averaged sensor variables

* output file (tidy2_data.txt)