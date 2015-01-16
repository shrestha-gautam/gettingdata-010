---
title: "Codebook.md"
output: html_document
---
#study design  
These data has been extracted from the dataset *Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine* publication [1]. The data contains only the variables which contain mean or standard deviation of the measurements. The data is summary (mean) value of each variable for the each subject and each activity as described below.   

#codebook
Codebook describes the variables appeared in the tidydata.txt file.  

##subject  
Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

##activity
Each activity is performed by each subject.  
1:walking  
2:walking upstairs  
3:walking downstairs  
4:standing  
5:sitting  
6:laying

##column parameters
The column names are the combination of different parameters included in the data measurements. For ease, parameters of the column name are combined to one word.    
*For example: fbodygyromeanfreqx column name refers to the **average(mean) frequency** of data point which was obtained by **faster fourier transform (FFT)** of the **angular body velocity vector** measured by the **gyroscope** for each window sample in **x direction**.*      
Here each adjoining parameters are explained.    

**t**  
Prefix 't' denotes time. These time domain signals were captured at a constant rate of 50 Hz.  
**tacc**  
The accelerometer raw signal.  
**tgyro**  
The gyroscope raw signal.  
**tbodyacc**  
Total body acceleration signal obtained by subtracting the gravity from the total acceleration.      
**tgravityacc**  
The acceleration signal from the smartphone accelerometer in standard gravity units 'g'.      
**tbodyaccjerk**  
The body linear accelaration and angular velocity derived in time to obtain Jerk signals.  
**tbodygyro**  
The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.     
**tbodygyrojerk**  
The angular velocity vector measured by the gyroscope and derived in time to obtain Jerk signals.   
**tbodyaccmag**  
The magnitude of the total body acceleration signal obtained by subtracting the gravity from the total acceleration. The magnitude of these three dimensional signals calculated using the Euclidean norm.    
**tgravityaccmag**  
The magnitude of acceleration signal from the smartphone accelerometer in standard gravity units.   
**tbodyaccjerkmag**  
The magnitude of the body linear accelaration and angular velocity derived in time to obtain Jerk signals.    
**tbodygyromag**  
The magnitude of the angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.  
**tbodygyrojerkmag**  
The magnitude of the angular velocity vector measured by the gyroscope and derived in time to obtain Jerk signals.   
**f**  
A faster fourier transform (FFT) applied to some of these signals. The prefix 'f' to indicate frequency domain signals.   
**mean**  
Mean value  
**meanfreq**   
Mean frequency value   
**std**   
Standard deviation   
**xyz**   
X or y or z at the end (suffix) of the variable name denotes axial signals in the x,y or z directions. 

**Reference**  
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.Enter file contents here
