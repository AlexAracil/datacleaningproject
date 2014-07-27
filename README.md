##datacleaningproject

###Coursera Getting and Cleaning Data Project

The purpose of this project is to demonstrate our ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

This repository includes the present **README.md** file, a **CodeBook.md** file, explaning the source of the data and the transformation applied to this data in order to obtain the resulting tidy dataset. It contains the R scripts used to process the data, **run_analysis.R**, **read_data.R** and **process_data.R**. At last, it contains also the resulting datasets in two text files, **tidy_data.txt** and **tidy_data_mean.txt**.

The script run\_analysis.R consists in two calls, to external R scripts files. The first one, read\_data.R, reads the text files containing the original data. The second one, process\_data.R to generate the required tidy data and does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


