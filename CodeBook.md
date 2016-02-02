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

## Tidy 1 Data
### Input Files
* activity_labels.txt   - links the class labels with their activity name

* features.txt  -   list of all features

* subject_train.txt -   row identifies the subject who performed the activity for each window sample, range is from 1 to 30, training set

* X_train.txt    -   sensor data, training set

* y_train.txt   -   activity data, training set

* subject_test.txt  -   row identifies the subject who performed the activity for each window sample, range is from 1 to 30, test set

* X_test.txt    -   sensor data, test set

* y_test.txt    -   activity data, test set

### Output File
* tidy1_data.txt (described below)

#### Variables
* ActivityName  -   activities performed by person (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

* SubjectCode   -   identification code for subject who performed the activity for each window sample (range is from 1 to 30)

* tBodyAcc.mean...X -   body acceleration signal, mean value, x-axis

* tBodyAcc.mean...Y -   body acceleration signal, mean value, y-axis

* tBodyAcc.mean...Z -   body acceleration signal, mean value, z-axis

* tBodyAcc.std...X  -   body acceleration signal, standard deviation, x-axis

* tBodyAcc.std...Y  -   body acceleration signal, standard deviation, y-axis

* tBodyAcc.std...Z  -   body acceleration signal, standard deviation, z-axis

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

* output file (tidy1_data.txt)



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
* ActivityName  -   activities performed by person (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

* SubjectCode   -   identification code for subject who performed the activity for each window sample (range is from 1 to 30)

* tBodyAcc.mean...X.Mean -   body acceleration signal, mean value, x-axis, average by activity and subject

* tBodyAcc.mean...Y.Mean -   body acceleration signal, mean value, y-axis, average by activity and subject

* tBodyAcc.mean...Z.Mean -   body acceleration signal, mean value, z-axis, average by activity and subject

* tBodyAcc.std...X.Mean  -   body acceleration signal, standard deviation, x-axis, average by activity and subject

* tBodyAcc.std...Y.Mean  -   body acceleration signal, standard deviation, y-axis, average by activity and subject

* tBodyAcc.std...Z.Mean  -   body acceleration signal, standard deviation, z-axis, average by activity and subject

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