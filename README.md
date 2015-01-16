# gettingdata-010
courseproject
---
title: "Readme.md"
output: html_document
---

These data were generated from the dataset *Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine* publication [1]. The dataset was downloaded from the webpage: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The extracted data contains only the variables which contain mean or standard deviation of the measurements. The data is summary (mean) value of each variable for the each subject and each activity.        

This data used following files from the main dataset [1].   
##Data files  
Two partitioned data files.  
**X_test.txt**  
It contains 2947 rows and 561 columns.  
**X_train.txt**  
It contains 7352 rows and 561 columns.  

##Subject files  
It contains list of subject(volunteer) IDs (1 -30) who performed different activities. Two respective subject files were used:    
**subject_test.txt**  
It contains 2947 rows and 1 columns.  
**subject_train.txt**  
It contains 7352 rows and 1 columns.  

##Activity files  
It contains list of different six activities performed by 30 volunteers. The data is coded in numbers 1 - 6. The codes are described in codebook. The data was saved in two files:    
**y_test.txt**   
It contains 2947 rows and 1 columns.  
**y_train.txt**   
It contains 7352 rows and 1 columns.  

##Feature file  
**features.txt**    
It contains list of variables measured. It contains 561 rows and 2 columns.  

##operations performed  
To make tidy data following cleaning activities were performed:  
1. Variable names were changed to all lowercase, removed signs like '_', '.' etc.
2. Descriptive variable names were used to the activities. 

**Reference**  
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.
