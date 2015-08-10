# Getting and Cleaning Data Project

This repo contains the code for course project of Getting and Cleaning Data.

## Script explanation

It is necessary that the Samsung test data has been extracted to a folder called "data".

The script run_analysis() does the following:

* read in test and train data 
* merge it with subjectIDs and activities
* extract columns for "mean" and "std" values while keeping ID and activity columns
* calculate the means of columns for activities of subjects
* write out the calculated dataset to file "cleaned_table_of_means.txt"

## Data

The data is explained in the documents data/README.txt and Codebook.md.
