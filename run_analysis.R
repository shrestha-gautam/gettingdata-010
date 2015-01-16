#First thing first, set the working directory
setwd("~/getting and cleaning data/course project")
#to convert txt files to table format for the purpose of analysis, we use read.table command.
#data is stored in two files X_test and X_train txt files.
test<-read.table("X_test.txt")
train<-read.table("X_train.txt")
#Intersect command will scan for the common variable names. 
#When we merge files without intersect; two variables with same names are created.  
intersect(names(test),names(train))
#Merging the training and the test sets to create one data set(1).
testtrain <-merge(test,train,all = TRUE)
#fetures.txt file contains variable names.
variablenames<-read.table("features.txt")
#there are two columns in the features text file, our concern is the second column.
s<-variablenames[,2]
k<-data.frame(s)
#Appropriately labels the data set with descriptive variable names(4). 
names(testtrain)
#to change the column names, we use following command with colnames(filename).
colnames(testtrain)<-variablenames[,2]
##make.names function removes '-' and '()' from the variable name and substitute with '.'.
names(testtrain)<-make.names(names(testtrain),unique=TRUE)
#to make variable name easy to select and type, we need to keep all characters lower case (tolower function).
names(testtrain)<-tolower(names(testtrain))
#to remove all '.' signs from the variable name, we use gsub function; "\\." denotes that '.' is character and not metacharacter. 
names(testtrain)<-gsub("\\.","", names(testtrain),)
#Extracting only the measurements on the mean and standard deviation for each measurement(2).
testtrain2<-colnames(testtrain)
#grep function selects columns with mean or std as part of the name in testtrain2 file. 
g<-grep("mean|std",testtrain2)
testtrain2<-testtrain[c(g)]
dim(testtrain2)
#Now, working with activity files.
testactivity<-read.table("y_test.txt")
dim(testactivity)
trainactivity<-read.table("y_train.txt")
dim(trainactivity)
#Merging two activity files into one.
activity<-rbind(testactivity,trainactivity)
dim(activity)
names(activity)
#As V1 is column name for data from activity file; to keep it clear we rename it activity. 
#To rename the column name, plyr package is helpful. 
library(plyr)
activity<-rename(activity,replace = c(V1= "activity"))
head(activity)
#Now, working with subject files.
subtest<-read.table("subject_test.txt")
dim(subtest)
names(subtest)
subtrain<-read.table("subject_train.txt")
names(subtrain)
#Merging two activity files into one.
intersect(names(subtest),names(subtrain))
subject<-rbind(subtest,subtrain)
head(subject)
#As V1 is column name for data from subject file; to keep it clear we rename it subject. 
subject<-rename(subject,replace = c("V1"= "subject"))
head(subject)
dim(subject)
#joining files together
datameansd<-cbind(subject,activity,testtrain2)
#Using descriptive activity names to name the activities in the data set.
#V1 is coded 1,2,3,4,5,6 and we want to replace those by descriptive variable names.
# Descriptive variable names are :"Walking", "Walking_Upstairs","Walking_downstairs","Sitting","Standing","Laying". 
#For replacing codes with descriptive variable, Hmisc package is useful.
library(Hmisc)
datameansd$activity <- factor(datameansd$activity,
                            levels = c(1,2,3,4,5,6),
                            labels = c("Walking", "Walking_Upstairs","Walking_downstairs","Sitting","Standing","Laying"))
#From the data set in step 4, creates a second, independent tidy data set with the average of each
#variable for each activity and each subject.
data.frame(datameansd)
datameansd$activity<-as.factor(datameansd$activity)
datameansd$subject<-as.factor(datameansd$subject)
tidydata<-aggregate(datameansd[,3:88], by = list(datameansd$subject,datameansd$activity), FUN= mean)
sort(tidydata)
names(tidydata)
tidydata<-rename(tidydata,replace=c("Group.1" = "subject"))
tidydata<-rename(tidydata,replace=c("Group.2" = "activity"))
names(tidydata)
write.table(data.frame(tidydata), file= "tidydata.txt", row.name = FALSE)
