# Codebook

Description of data, tranformations, and the variables. 

## Data

A description of the data can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data tables data/test/X_test.txt and data/train/X_train.txt have been concatenated.

## Transformations

Variables are organized in columns. The column names are extracted from the document data/features.txt. A description of the features can be found in the document data/features-info.txt

The first column of the tidy data set cleand_table_of_means contains the IDs of subjects and is named "Subject". The table for the subjectIDs has been extracted from seperate files /data/test/subject_test.txt and /data/train/subject_train.txt and has been merged with the data tables.

The second column of the tidy data set contains the activities carried out by a subject and is named "Activity". The data for the activities is found in data/train/y_train.txt and data/test/y_test.txt. In these files the values for activities range from 1-6 and have been mapped to mnemonic values using the table data/activity_labels.txt.

Varibles/Columns not containing the string "mean" or "std" have been excluded from the tidy data set.

Selected Column names have been renamed for eased handling and reading. Brackets and dashes have been deleted and words start with a capitalized letter.

Finally and most important, for every activity carried out by a subject the mean of the measurement variables has been calculated. 

## Variables

Subject: Range 1-30

Activity: Levels "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"

numerictBodyAccMeanX: numeric

tBodyAccMeanY: numeric

tBodyAccMeanZ: numeric

tBodyAccStdX: numeric

tBodyAccStdY: numeric

tBodyAccStdZ: numeric

tGravityAccMeanX: numeric

tGravityAccMeanY: numeric

tGravityAccMeanZ: numeric

tGravityAccStdX: numeric

tGravityAccStdY: numeric

tGravityAccStdZ: numeric

tBodyAccJerkMeanX: numeric

tBodyAccJerkMeanY: numeric

tBodyAccJerkMeanZ: numeric

tBodyAccJerkStdX: numeric

tBodyAccJerkStdY: numeric

tBodyAccJerkStdZ: numeric

tBodyGyroMeanX: numeric

tBodyGyroMeanY: numeric

tBodyGyroMeanZ: numeric

tBodyGyroStdX: numeric

tBodyGyroStdY: numeric

tBodyGyroStdZ: numeric

tBodyGyroJerkMeanX: numeric

tBodyGyroJerkMeanY: numeric

tBodyGyroJerkMeanZ: numeric

tBodyGyroJerkStdX: numeric

tBodyGyroJerkStdY: numeric

tBodyGyroJerkStdZ: numeric

tBodyAccMagMean: numeric

tBodyAccMagStd: numeric

tGravityAccMagMean: numeric

tGravityAccMagStd: numeric

tBodyAccJerkMagMean: numeric

tBodyAccJerkMagStd: numeric

tBodyGyroMagMean: numeric

tBodyGyroMagStd: numeric

tBodyGyroJerkMagMean: numeric

tBodyGyroJerkMagStd: numeric

fBodyAccMeanX: numeric

fBodyAccMeanY: numeric

fBodyAccMeanZ: numeric

fBodyAccStdX: numeric

fBodyAccStdY: numeric

fBodyAccStdZ: numeric

fBodyAccMeanFreqX: numeric

fBodyAccMeanFreqY: numeric

fBodyAccMeanFreqZ: numeric

fBodyAccJerkMeanX: numeric

fBodyAccJerkMeanY: numeric

fBodyAccJerkMeanZ: numeric

fBodyAccJerkStdX: numeric

fBodyAccJerkStdY: numeric

fBodyAccJerkStdZ: numeric

fBodyAccJerkMeanFreqX: numeric

fBodyAccJerkMeanFreqY: numeric

fBodyAccJerkMeanFreqZ: numeric

fBodyGyroMeanX: numeric

fBodyGyroMeanY: numeric

fBodyGyroMeanZ: numeric

fBodyGyroStdX: numeric

fBodyGyroStdY: numeric

fBodyGyroStdZ: numeric

fBodyGyroMeanFreqX: numeric

fBodyGyroMeanFreqY: numeric

fBodyGyroMeanFreqZ: numeric

fBodyAccMagMean: numeric

fBodyAccMagStd: numeric

fBodyAccMagMeanFreq: numeric

fBodyBodyAccJerkMagMean: numeric

fBodyBodyAccJerkMagStd: numeric

fBodyBodyAccJerkMagMeanFreq: numeric

fBodyBodyGyroMagMean: numeric

fBodyBodyGyroMagStd: numeric

fBodyBodyGyroMagMeanFreq: numeric

fBodyBodyGyroJerkMagMean: numeric

fBodyBodyGyroJerkMagStd: numeric

fBodyBodyGyroJerkMagMeanFreq: numeric

angletBodyAccMean.gravity: numeric

angletBodyAccJerkMean.gravityMean: numeric

angletBodyGyroMean.gravityMean: numeric

angletBodyGyroJerkMean.gravityMean: numeric

angleX.gravityMean: numeric

angleY.gravityMean: numeric

angleZ.gravityMean: numeric
