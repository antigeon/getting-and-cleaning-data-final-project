# Code Book

This code book summarizes the resulting data fields in `average_data.txt`.

# Variables

* `train`, `trainActivities`, `trainSubjects`, `test`, `testActivities` and `testSubjects` contain the data from the downloaded files.
* `all`, `Activities` and `Subjects` merge the previous datasets to further analysis.
* `features` contains the correct names for the `all` dataset, which are applied to the column names stored in 
* `index_features`, a numeric vector used to extract the desired data from  `featrues`. `useful_features` is the result
* `all` merges `Activities`, `all` and `Subjects` in a big dataset.
* `index_data` a tbl we use `group_by` to form Groups with `subject` and `activity`
* Finally, `tidy` contains the relevant averages which will be later stored in a `averages_data.txt` file. 

## Measurements

* `tBodyAcc-mean()X`
* `tBodyAcc-mean()Y`
* `tBodyAcc-mean()Z`
* `tBodyAcc-std()X`
* `tBodyAcc-std()Y`
* `tBodyAcc-std()Z`
* `tGravityAcc-mean()X`
* `tGravityAcc-mean()Y`
* `tGravityAcc-mean()Z`
* `tGravityAcc-std()X`
* `tGravityAcc-std()Y`
* `tGravityAcc-std()Z`
* `tBodyAccJerk-mean()X`
* `tBodyAccJerk-mean()Y`
* `tBodyAccJerk-mean()Z`
* `tBodyAccJerk-std()X`
* `tBodyAccJerk-std()Y`
* `tBodyAccJerk-std()Z`
* `tBodyGyro-mean()X`
* `tBodyGyro-mean()Y`
* `tBodyGyro-mean()Z`
* `tBodyGyro-std()X`
* `tBodyGyro-std()Y`
* `tBodyGyro-std()Z`
* `tBodyGyroJerk-mean()X`
* `tBodyGyroJerk-mean()Y`
* `tBodyGyroJerk-mean()Z`
* `tBodyGyroJerk-std()X`
* `tBodyGyroJerk-std()Y`
* `tBodyGyroJerk-std()Z`
* `tBodyAccMag-mean()`
* `tBodyAccMag-std()`
* `tGravityAccMag-mean()`
* `tGravityAccMag-std()`
* `tBodyAccJerkMag-mean()`
* `tBodyAccJerkMag-std()`
* `tBodyGyroMag-mean()`
* `tBodyGyroMag-std()`
* `tBodyGyroJerkMag-mean()`
* `tBodyGyroJerkMag-std()`
* `fBodyAcc-mean()X`
* `fBodyAcc-mean()Y`
* `fBodyAcc-mean()Z`
* `fBodyAcc-std()X`
* `fBodyAcc-std()Y`
* `fBodyAcc-std()Z`
* `fBodyAcc-mean()FreqX`
* `fBodyAcc-mean()FreqY`
* `fBodyAcc-mean()FreqZ`
* `fBodyAccJerk-mean()X`
* `fBodyAccJerk-mean()Y`
* `fBodyAccJerk-mean()Z`
* `fBodyAccJerk-std()X`
* `fBodyAccJerk-std()Y`
* `fBodyAccJerk-std()Z`
* `fBodyAccJerk-mean()FreqX`
* `fBodyAccJerk-mean()FreqY`
* `fBodyAccJerk-mean()FreqZ`
* `fBodyGyro-mean()X`
* `fBodyGyro-mean()Y`
* `fBodyGyro-mean()Z`
* `fBodyGyro-std()X`
* `fBodyGyro-std()Y`
* `fBodyGyro-std()Z`
* `fBodyGyro-mean()FreqX`
* `fBodyGyro-mean()FreqY`
* `fBodyGyro-mean()FreqZ`
* `fBodyAccMag-mean()`
* `fBodyAccMag-std()`
* `fBodyAccMag-mean()Freq`
* `fBodyBodyAccJerkMag-mean()`
* `fBodyBodyAccJerkMag-std()`
* `fBodyBodyAccJerkMag-mean()Freq`
* `fBodyBodyGyroMag-mean()`
* `fBodyBodyGyroMag-std()`
* `fBodyBodyGyroMag-mean()Freq`
* `fBodyBodyGyroJerkMag-mean()`
* `fBodyBodyGyroJerkMag-std()`
* `fBodyBodyGyroJerkMag-mean()Freq`

## Activity Labels

* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test
