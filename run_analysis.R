#####################################################
# Coursera: Getting and Cleaning Data Course Project
# Created by Dan O'Brien
# Last Updated 05-21-2016

########
# SET UP
########

rm(list=ls())

library(plyr)


# SET WD
setwd("C:/Users/Dan/Documents/Statistics/Coursera/Data Science/03 Getting and Cleaning Data/CourseProject")


# DOWNLOAD DATA
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/smartphone.zip")
unzip("./data/smartphone.zip", exdir = "./data")


# IMPORT DATA
features <- read.table("./data/UCI HAR Dataset/features.txt")
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", col.names = c("activity.id","activity"))

subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names = "subject.id")
X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt", col.names = "activity.id")

subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names = "subject.id")
X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt", col.names = "activity.id")

for (file in sub(".txt","",list.files("./data/UCI HAR Dataset/test/Inertial Signals"))) {
  
  tmp_path <- paste0("./data/UCI HAR Dataset/test/Inertial Signals/",file,".txt")
  assign(file,read.table(tmp_path))
  
}

for (file in sub(".txt","",list.files("./data/UCI HAR Dataset/train/Inertial Signals"))) {
  
  tmp_path <- paste0("./data/UCI HAR Dataset/train/Inertial Signals/",file,".txt")
  assign(file,read.table(tmp_path))
  
}

#Check Dimensions
dim(body_acc_x_test)
dim(body_acc_y_test)
dim(body_acc_z_test)
dim(body_gyro_x_test)
dim(body_gyro_y_test)
dim(body_gyro_z_test)
dim(total_acc_x_test)
dim(total_acc_y_test)
dim(total_acc_z_test)
dim(subject_test)
dim(X_test)
dim(y_test)

dim(body_acc_x_train)
dim(body_acc_y_train)
dim(body_acc_z_train)
dim(body_gyro_x_train)
dim(body_gyro_y_train)
dim(body_gyro_z_train)
dim(total_acc_x_train)
dim(total_acc_y_train)
dim(total_acc_z_train)
dim(subject_train)
dim(X_train)
dim(y_train)



#######
#OUTPUT
#######

# Merges the training and the test sets to create one data set.

test <- X_test
names(test) <- features$V2

test <- cbind(subject_test, y_test, test
              , body_acc_x_test, body_acc_y_test, body_acc_z_test
              , body_gyro_x_test, body_gyro_y_test, body_gyro_z_test
              , total_acc_x_test, total_acc_y_test, total_acc_z_test
              )

test <- merge(test, activity_labels, by = "activity.id")


train <- X_train
names(train) <- features$V2

train <- cbind(subject_train, y_train, train
              , body_acc_x_train, body_acc_y_train, body_acc_z_train
              , body_gyro_x_train, body_gyro_y_train, body_gyro_z_train
              , total_acc_x_train, total_acc_y_train, total_acc_z_train
)

train <- merge(train, activity_labels, by = "activity.id")


grp <- data.frame(rep("test",nrow(test)))
names(grp) <- "group"
head(grp)

test <- cbind(grp, test)
names(test)

grp <- data.frame(rep("train",nrow(train)))
names(grp) <- "group"
head(grp)

train <- cbind(grp, train)
names(train)

dat <- rbind(test,train)
dim(dat)


# Extracts only the measurements on the mean and standard deviation for each measurement.

dat <- dat[,c(3,1717,grep("mean|std",names(dat)))]
names(dat)


# Uses descriptive activity names to name the activities in the data set

# Appropriately labels the data set with descriptive variable names.

dat_names <- data.frame(names(dat))
dat_names$axis <- ""
dat_names$meanstd <- ""
dat_names$unit <- ""
dat_names$signal <- ""
dat_names$metric <- ""
dat_names$jerk <- ""
dat_names$name <- ""

dat_names$axis[grep('-X',names(dat))] <- 'X'
dat_names$axis[grep('-Y',names(dat))] <- 'Y'
dat_names$axis[grep('-Z',names(dat))] <- 'Z'

dat_names$meanstd[grep('mean',names(dat))] <- 'mean'
dat_names$meanstd[grep('mean',names(dat))] <- 'mean'
dat_names$meanstd[grep('mean',names(dat))] <- 'mean'
dat_names$meanstd[grep('std',names(dat))] <- 'std'
dat_names$meanstd[grep('std',names(dat))] <- 'std'
dat_names$meanstd[grep('std',names(dat))] <- 'std'
dat_names$meanstd[grep('meanFreq',names(dat))] <- 'meanFreq'
dat_names$meanstd[grep('meanFreq',names(dat))] <- 'meanFreq'
dat_names$meanstd[grep('meanFreq',names(dat))] <- 'meanFreq'

dat_names$unit[grep('^t',names(dat))] <- 'time'
dat_names$unit[grep('^f',names(dat))] <- 'frequency'

dat_names$signal[grep('Body',names(dat))] <- 'body'
dat_names$signal[grep('Gravity',names(dat))] <- 'gravity'

dat_names$jerk[grep('Jerk',names(dat))] <- 'jerk'

dat_names$metric[grep('Gyro',names(dat))] <- 'gyroscope'
dat_names$metric[grep('GyroMag',names(dat))] <- 'gyroscopeMagnitude'
dat_names$metric[grep('Acc',names(dat))] <- 'accelerometer'
dat_names$metric[grep('AccMag',names(dat))] <- 'accelerometerMagnitude'

dat_names$name <- paste(dat_names$meanstd, dat_names$unit, dat_names$signal, dat_names$metric, dat_names$jerk, dat_names$axis, sep=".")
dat_names$name <- sub("\\.\\.","\\.",dat_names$name)
dat_names$name <- sub("\\.$","",dat_names$name)
dat_names$name[1:2] <- names(dat)[1:2]

dat_names

dim(dat_names)
length(unique(dat_names$name))

names(dat) <- dat_names$name

write.csv(dat,"FullData.csv")



# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
detach(package: plyr)
library(dplyr)

group_by(dat,activity,subject.id) 

dat_mean <- summarize_each(group_by(dat,activity,subject.id), funs(mean))
dim(dat_mean)

write.csv(dat_mean,"SummarizedData.csv")
