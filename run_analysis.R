# Function written for the assignment in Data Cleanup program week 4 peer graded assignment.  
#
#

run_analysis <- function() {
    #Initialize all the file locations in your machines. 
    urlfeatures <- "C:/Git/datasharing/New folder/UCI HAR Dataset/features.txt";
    urllabels <- "C:/Git/datasharing/New folder/UCI HAR Dataset/activity_labels.txt";
    urltrain <- "C:/Git/datasharing/New folder/UCI HAR Dataset/train/X_train.txt";
    urltrainytxt <- "C:/Git/datasharing/New folder/UCI HAR Dataset/train/Y_train.txt";
    urltrainsubjecttrain <- "C:/Git/datasharing/New folder/UCI HAR Dataset/train/subject_train.txt";
    urltest <- "C:/Git/datasharing/New folder/UCI HAR Dataset/test/X_test.txt";
    urltestytxt <- "C:/Git/datasharing/New folder/UCI HAR Dataset/test/Y_test.txt";
    urltestsubjecttrain <- "C:/Git/datasharing/New folder/UCI HAR Dataset/test/subject_test.txt";
    
    #Work on all features available. Our aim is only on Mean and Std. Extract only the features that has mean or std. 
    #Discard all the remaining activities. 
    features <- read.table(urlfeatures);
    features[,2]<-gsub("-","", features[,2]);
    features[,2]<-gsub('[-()]','', features[,2]);
    features[,2]<-gsub(',','', features[,2]);
    features[,2]<-tolower(features[,2]);
    positions <- grep(".*mean.*|.*std.*", features[,2]);
    features <- features[positions, ];

    #Get the test data set and assign each observation with subject and activity. 
    test <- read.csv(urltest, sep="", header=FALSE);
    test[, ncol(test)+1] <- read.csv(urltestsubjecttrain, sep="", header=FALSE);
    test[, ncol(test)+1] <- read.csv(urltestytxt, sep="", header=FALSE);
    
    #Get the train data set and assign each observation with subject and activity. 
    train <- read.csv(urltrain, sep="", header=FALSE);
    train[, ncol(train)+1] <- read.csv(urltrainsubjecttrain, sep="", header=FALSE);
    train[, ncol(train)+1] <- read.csv(urltrainytxt, sep="", header=FALSE);
    
    #Merge both test and train dataset. Using the positions defined earlier, discard the columns that are not matching with Mean or Std. 
    #Add additional columns Subject and Activity for mapping.  
    featuresdata <- rbind(test, train);
    positions <- c(positions, 562, 563);
    featuresdata <- featuresdata[,positions];
    colnames(featuresdata) <- c(features$V2, "Subject", "Activity");

    #Map the activity labels using the columns added. 
    labels = read.csv(urllabels, sep="", header=FALSE);
    featuresdata$Activity <- gsub(1, labels[1,2], featuresdata$Activity);
    featuresdata$Activity <- gsub(2, labels[2,2], featuresdata$Activity);
    featuresdata$Activity <- gsub(3, labels[3,2], featuresdata$Activity);
    featuresdata$Activity <- gsub(4, labels[4,2], featuresdata$Activity);
    featuresdata$Activity <- gsub(5, labels[5,2], featuresdata$Activity);
    featuresdata$Activity <- gsub(6, labels[6,2], featuresdata$Activity);
    
    #Create a clean data summarizing the data by subject and activities. 
    tidydata <- aggregate(featuresdata, by=list(subject=featuresdata$Subject, activity = featuresdata$Activity), mean);
    tidydata<- tidydata[,1:(ncol(tidydata)-2)];
    write.csv(tidydata, "Cleanfile.txt", sep=",");
}
