# Course 03, Week 04: Course Project README

### run_analysis.R
* reads in the following files: activity_labels.txt, features.txt, subject_test.txt, subject_train.txt, X_test.txt, X_train.txt, y_test.txt, y_train.txt.

* combines these data sets into a single data set for body acceleration signal mean and standard deviation, tBodyAcc.mean and tBodyAcc.std, for x-y-z axis e.g. ...X to denote x-axis

* outputs tidy1_data.txt for body acceleration signal mean and standard deviation with each feature vector as a row for each activity and subject

* outputs tidy2_data.txt for averaged acceleration signal mean and standard deviation values grouped by activity and subject

### CodeBook.md
codebook outlining the original Human Activity Recognition Using Smartphones Dataset, input files used, variables in the output file, and transformations performed for both the Tidy1 (tidy1_data.txt) and Tidy2 (tidy2_data.txt) output files