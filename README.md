Overview
========

The script provided in this repository produces a tidied dataset from the UCI HAR Dataset for 
data retrieved from the accelerometers of a Samsung Galaxy S smartphone. 

In order to get started with the script, first download the project dataset:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The zip file must be placed in the appropriate repository for the R script to function correctly.
Once the file is in place, execute the "run_analysis.R" script to tidy the dataset. 

run_analysis.R
==============

This script takes the following steps to clean and tidy up the UCI dataset:

1. The two separate data tables in the repository for the training and test data are merged into one larger dataset. 

2. For the purposes of this assignment, only the mean and standard deviation data is needed. These are extracted. 

3. The activities in the original dataset are coded by numbers. These are replaced with actual descriptions of the activities. 

4. The variable for the columns are replaced with more descriptive variable names. 

5. A new tidied dataset is created with these modifications, which is then written in table format to the "tidy.txt" file. 

Importing the Dataset
=====================

To re-import the tidied dataset found in tidy.txt, read the file as a table in R:

```r
read.table("tidy.txt", header = TRUE)
```

Happy Grading!