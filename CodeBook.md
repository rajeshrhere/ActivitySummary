# Cleansing data Peer Project Assignment - CodeBook file. 

## About the Dataset

From my understanding, the dataset is prepared from the experiments have been carried our with a group of volunteers performing a set of activities wearing Samsung smartphone. The sensor signals from the smart phone has been noise filtered and contains various measurements from the phone. Copy of the dataset can be found at the below site. 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Out of all the measurements, the project only needs measurements related to Mean and Std for all the subjects. This project is about reading the data from various datasets and processing them to make the tidy for different subjects.  

## What is there in the Tidy dataset
The tidy dataset contains the mean of sensor signals (below) for various subjects. 
> tbodyaccmeanx
> tbodyaccmeany
> tbodyaccmeanz
> tbodyaccstdx
> tbodyaccstdy
> tbodyaccstdz
> tgravityaccmeanx
> tgravityaccmeany
> tgravityaccmeanz
> tgravityaccstdx
> tgravityaccstdy
> tgravityaccstdz
> tbodyaccjerkmeanx
> tbodyaccjerkmeany
> tbodyaccjerkmeanz
> tbodyaccjerkstdx
> tbodyaccjerkstdy
> tbodyaccjerkstdz
> tbodygyromeanx
> tbodygyromeany
> tbodygyromeanz
> tbodygyrostdx
> tbodygyrostdy
> tbodygyrostdz
> tbodygyrojerkmeanx
> tbodygyrojerkmeany
> tbodygyrojerkmeanz
> tbodygyrojerkstdx
> tbodygyrojerkstdy
> tbodygyrojerkstdz
> tbodyaccmagmean
> tbodyaccmagstd
> tgravityaccmagmean
> tgravityaccmagstd
> tbodyaccjerkmagmean
> tbodyaccjerkmagstd
> tbodygyromagmean
> tbodygyromagstd
> tbodygyrojerkmagmean
> tbodygyrojerkmagstd
> fbodyaccmeanx
> fbodyaccmeany
> fbodyaccmeanz
> fbodyaccstdx
> fbodyaccstdy
> fbodyaccstdz
> fbodyaccmeanfreqx
> fbodyaccmeanfreqy
> fbodyaccmeanfreqz
> fbodyaccjerkmeanx
> fbodyaccjerkmeany
> fbodyaccjerkmeanz
> fbodyaccjerkstdx
> fbodyaccjerkstdy
> fbodyaccjerkstdz
> fbodyaccjerkmeanfreqx
> fbodyaccjerkmeanfreqy
> fbodyaccjerkmeanfreqz
> fbodygyromeanx
> fbodygyromeany
> fbodygyromeanz
> fbodygyrostdx
> fbodygyrostdy
> fbodygyrostdz
> fbodygyromeanfreqx
> fbodygyromeanfreqy
> fbodygyromeanfreqz
> fbodyaccmagmean
> fbodyaccmagstd
> fbodyaccmagmeanfreq
> fbodybodyaccjerkmagmean
> fbodybodyaccjerkmagstd
> fbodybodyaccjerkmagmeanfreq
> fbodybodygyromagmean
> fbodybodygyromagstd
> fbodybodygyromagmeanfreq
> fbodybodygyrojerkmagmean
> fbodybodygyrojerkmagstd
> fbodybodygyrojerkmagmeanfreq
> angletbodyaccmeangravity
> angletbodyaccjerkmeangravitymean
> angletbodygyromeangravitymean
> angletbodygyrojerkmeangravitymean
> anglexgravitymean
> angleygravitymean
> anglezgravitymean
