#course 03, week 04: course project

library(dplyr)
options(dplyr.width = Inf, dplyr.print_max = 100)

#--------------------
#appended data
#read features labels
ftr_data <- read.table(file = 'features.txt',
                       col.names = c('FeatureOrder', 'FeatureName')
)

#create descriptive feature column names with r-acceptable naming conventions
ftr_cnames <- make.names(ftr_data[, 'FeatureName'])

#----------
#read activity labels
act_data <- read.table(file = 'activity_labels.txt',
                       col.names = c('ActivityCode', 'ActivityName')
)

#--------------------
#training data
#read sensor signals data
train_x_data <- read.table(file = 'X_train.txt',
                          col.names = ftr_cnames  #set column names to feature names
)

#-----
#read activity type data
train_y_data <- read.table(file = 'Y_train.txt',
                          col.names = 'ActivityCode'
)

#merge activity names to activity data
train_y_data <- merge(x = train_y_data,
                      y = act_data,
                      by = 'ActivityCode',
                      all.x = TRUE
)

#-----
#read subject data
train_sub_data <- read.table(file = 'subject_train.txt',
                             col.names = 'SubjectCode'
)

#----------
#combine sensor and activity type data
train_all_data = cbind(train_x_data, 
                       train_y_data,
                       train_sub_data
)

#--------------------
#test data
#read sensor signals data
test_x_data <- read.table(file = 'X_test.txt',
                          col.names = ftr_cnames  #set column names to feature names
)

#-----
#read activity type data
test_y_data <- read.table(file = 'Y_test.txt',
                          col.names = 'ActivityCode'
)

#merge activity names to activity data
test_y_data <- merge(x = test_y_data,
                     y = act_data,
                     by = 'ActivityCode',
                     all.x = TRUE
)

#-----
#read subject data
test_sub_data <- read.table(file = 'subject_test.txt',
                            col.names = 'SubjectCode'
)

#----------
#combine sensor and activity type data
test_all_data <- cbind(test_x_data, 
                       test_y_data,
                       test_sub_data
)

#--------------------
#complete data
#combine train and test data
all_data <- rbind(train_all_data, test_all_data)


#--------------------
#output
#tidy data 1: mean and standard deviation values for all axis by activity type
#subset sensor data with activity and subject variables
tidy1_data <- all_data[c('ActivityName',
                         'SubjectCode',
                         'tBodyAcc.mean...X',
                         'tBodyAcc.mean...Y',
                         'tBodyAcc.mean...Z',
                         'tBodyAcc.std...X',
                         'tBodyAcc.std...Y',
                         'tBodyAcc.std...Z'
)]

#-----
#write tidy data to file
write.table(x = tidy1_data,
            file = 'tidy1_data.txt',
            row.names = FALSE
)

#----------
#tidy data 2: average of each variable for each activity and each subject
#subset, group, and calculate means for sensor data with activity and sensor data
tidy2_data <- tidy1_data %>% 
                  group_by(ActivityName, SubjectCode) %>%
                  summarize_each(funs(mean)) %>%
                  arrange(ActivityName, SubjectCode)

#rename column names for mean calculations
tidy2_cnames <- paste(names(tidy2_data[, -which(names(tidy2_data) == 
                                                c('ActivityName', 'SubjectCode')
                                            )]
                      ),
                      '.Mean',
                      sep = ''
)

tidy2_cnames <- c('ActivityName', 'SubjectCode', tidy2_cnames)

colnames(tidy2_data) <- tidy2_cnames

#-----
#write tidy data to file
write.table(x = tidy2_data,
            file = 'tidy2_data.txt',
            row.names = FALSE
)