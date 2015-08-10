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

Selected Column names have been renamed for eased handling and reading. Mainly brackets and dashes have been deleted and words start with an capitalized letter.

## Variables

Subject

Activity

tBodyAccMeanX
 
tBodyAccMeanY
 
tBodyAccMeanZ
 
tBodyAccStdX
 
tBodyAccStdY
 
tBodyAccStdZ
 
tGravityAccMeanX
 
tGravityAccMeanY
 
tGravityAccMeanZ
 
tGravityAccStdX
 
tGravityAccStdY
 
tGravityAccStdZ
 
tBodyAccJerkMeanX
 
tBodyAccJerkMeanY
 
tBodyAccJerkMeanZ
 
tBodyAccJerkStdX
 
tBodyAccJerkStdY
 
tBodyAccJerkStdZ
 
tBodyGyroMeanX
 
tBodyGyroMeanY
 
tBodyGyroMeanZ
 
tBodyGyroStdX
 
tBodyGyroStdY
 
tBodyGyroStdZ
 
tBodyGyroJerkMeanX
 
tBodyGyroJerkMeanY
 
tBodyGyroJerkMeanZ
 
tBodyGyroJerkStdX
 
tBodyGyroJerkStdY
 
tBodyGyroJerkStdZ
 
tBodyAccMagMean
 
tBodyAccMagStd
 
tGravityAccMagMean
 
tGravityAccMagStd
 
tBodyAccJerkMagMean
 
tBodyAccJerkMagStd
 
tBodyGyroMagMean
 
tBodyGyroMagStd
 
tBodyGyroJerkMagMean
 
tBodyGyroJerkMagStd
 
fBodyAccMeanX
 
fBodyAccMeanY
 
fBodyAccMeanZ
 
fBodyAccStdX
 
fBodyAccStdY
 
fBodyAccStdZ
 
fBodyAccMeanFreqX
 
fBodyAccMeanFreqY
 
fBodyAccMeanFreqZ
 
fBodyAccJerkMeanX
 
fBodyAccJerkMeanY
 
fBodyAccJerkMeanZ
 
fBodyAccJerkStdX
 
fBodyAccJerkStdY
 
fBodyAccJerkStdZ
 
fBodyAccJerkMeanFreqX
 
fBodyAccJerkMeanFreqY
 
fBodyAccJerkMeanFreqZ
 
fBodyGyroMeanX
 
fBodyGyroMeanY
 
fBodyGyroMeanZ
 
fBodyGyroStdX
 
fBodyGyroStdY
 
fBodyGyroStdZ
 
fBodyGyroMeanFreqX
 
fBodyGyroMeanFreqY
 
fBodyGyroMeanFreqZ
 
fBodyAccMagMean
 
fBodyAccMagStd
 
fBodyAccMagMeanFreq
 
fBodyBodyAccJerkMagMean
 
fBodyBodyAccJerkMagStd
 
fBodyBodyAccJerkMagMeanFreq
 
fBodyBodyGyroMagMean
 
fBodyBodyGyroMagStd
 
fBodyBodyGyroMagMeanFreq
 
fBodyBodyGyroJerkMagMean
 
fBodyBodyGyroJerkMagStd
 
fBodyBodyGyroJerkMagMeanFreq
 
angletBodyAccMean.gravity
 
angletBodyAccJerkMean.gravityMean
 
angletBodyGyroMean.gravityMean
 
angletBodyGyroJerkMean.gravityMean
 
angleX.gravityMean
 
angleY.gravityMean
 
angleZ.gravityMean
 
Column Subject is extracted from the files subject_test/_train.txt

Column Activity is extracted from file activity labels
