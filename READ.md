# Getting and Cleaning Data Project

This repo contains the code for course project of Getting and Cleaning Data.

## Script explanation

It is necessary that the Samsung test data can be found in folder /data/test and training data in /data/train.

The script run_analysis() does the following:

* read in test and train data and merge it with IDs and activites
* extract columns for "mean" and "std" values while keeping ID and activity columns
* calculate the means of columns for activities of subjects
* write out the calculated dataset to file "cleaned_table_of_means.txt"

