# Getting and cleaning data - Course Project

## Used files
The initial dataset was the product of merge the following files:

1. `features.txt`- descriptions for features measured
2. `activity.txt`- descriptions for activity, factor levels
3. `X_train.txt` -  measurements in train set 
4. `Y_train.txt` - activity reference for each observation in train
5. `subject_train.txt` - subject for each measurement in train
6. `X_test.txt` - measurements in test set 
7. `Y_test.txt` - activity reference for each observation in test
8. `subject_test.txt`- subject for each measurements in test

## Script working
1. Download files in project folder.
2. Unzip files. The result is a folder with all the data.
3. Import dataset, create one object per imported file.
4. Combine the datasets. `subject_train` and `Y_train` are added to `X_train` as columns. In the same way `Y_test` and`subject_test` are added to `X_test`. Later, both data frames are combined in a large one. 
5. Column names were defined using `features` and levels and labels of the column "activity" were defined using `activity`.
6. Filter the data frame using column names. Only which refers to "mean" or "sd" were preserved.
7. Calculate the average for each subject and each activity of all the pre-selected variables.
8. Save the result in a new file, called `Tidy_data.txt`

## Result 

### Identifiers 
The first two columns - Subject and Activity.
Subject: the ID of the Subject
Activity: the Name of the Activity performed by the subject

### Variables
"tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"          
"tBodyAcc-mean()-Z"           "tBodyAcc-std()-X"           
"tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"           
"tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"       
"tGravityAcc-mean()-Z"        "tGravityAcc-std()-X"        
"tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"        
"tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"      
"tBodyAccJerk-mean()-Z"       "tBodyAccJerk-std()-X"       
"tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"       
"tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"         
"tBodyGyro-mean()-Z"          "tBodyGyro-std()-X"          
"tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"          
"tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"     
"tBodyGyroJerk-mean()-Z"      "tBodyGyroJerk-std()-X"      
"tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
"tBodyAccMag-mean()"          "tBodyAccMag-std()"          
"tGravityAccMag-mean()"       "tGravityAccMag-std()"       
"tBodyAccJerkMag-mean()"      "tBodyAccJerkMag-std()"      
"tBodyGyroMag-mean()"         "tBodyGyroMag-std()"         
"tBodyGyroJerkMag-mean()"     "tBodyGyroJerkMag-std()"     
"fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
"fBodyAcc-mean()-Z"           "fBodyAcc-std()-X"           
"fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"           
"fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"      
"fBodyAccJerk-mean()-Z"       "fBodyAccJerk-std()-X"       
"fBodyAccJerk-std()-Y"        "fBodyAccJerk-std()-Z"       
"fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
"fBodyGyro-mean()-Z"          "fBodyGyro-std()-X"          
"fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"          
"fBodyAccMag-mean()"          "fBodyAccMag-std()"          
"fBodyBodyAccJerkMag-mean()"  "fBodyBodyAccJerkMag-std()"  
"fBodyBodyGyroMag-mean()"     "fBodyBodyGyroMag-std()"     
"fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()" 
