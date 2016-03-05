library(dplyr)
#step1 download data
filename<-"UCI HAR Dataset"
if (!file.exists(filename)){
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
    download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
    unzip(filename) 
}

#step2 read the txt files and merge them togehter.
features <- read.table("UCI HAR Dataset/features.txt")
activityLabels<-read.table("UCI HAR Dataset/activity_labels.txt")

train <- read.table("UCI HAR Dataset/train/X_train.txt")
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")


test <- read.table("UCI HAR Dataset/test/X_test.txt")
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")

all<-rbind(train,test)
colnames(all) <- features$V2   #name the all
Activities<-rbind(trainActivities,testActivities)
Subjects<-rbind(trainSubjects,testSubjects)

# it's necessary to name the variable before we use cbind() function.Otherwise, two cols with same name"v1" will appear. 
names(Subjects) <- "subject"            
names(Activities) <- "activity"
all<-cbind(Subjects,Activities,all)

#step3 get the names we want from features including    "mean()" and "std()" 
index_features <- grep("(mean|std)\\()", features[, 2])
useful_features<-features$V2[index_features]

#choose the rows we want
all<-all[,c(1,2,index_features+2)]   
all[,2]<-gsub("\\\n","",all[,2])    #remove "/n" when we read from txt files the result of the end of lines.
for(i in 1:6){
    all$activity<-gsub(i,activityLabels$V2[i],all$activity)
    }
index_data<-group_by(all,subject,activity)
tidy<-summarize_each(index_data,funs(mean))
write.table(tidy, "averages_data.txt", row.name=FALSE)