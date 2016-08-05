#Download files
dataset_url <- "https:d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(dataset_url, "cleaning data.zip")
unzip("cleaning data.zip")
#read the files
training<- read.table("UCI HAR Dataset/train/X_train.txt")
trainingLabels <-read.table("UCI HAR Dataset/train/y_train.txt")
subjecttraining <- read.table("UCI HAR Dataset/train/subject_train.txt")
test <- read.table("UCI HAR Dataset/test/X_test.txt")
testLabels <- read.table("UCI HAR Dataset/test/y_test.txt")
subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt")
#Merge Dataset to create one dataset
subject <- rbind(subjecttest, subjecttraining)
activity <- rbind(test, training)
Labels <- rbind(testLabels, trainingLabels)
features <- read.table ("UCI HAR Dataset/features.txt")
featuresname <- as.character(features[,2])
names(subject)<- c("subject")
names(activity)<- featuresname
names(Labels) <- c("Activity_Labels")

newdata <- cbind(subject, Labels)
Data <- cbind(newdata, activity)
#Extracts only the measurements on the mean and standard deviation for each measurement
Data1 <- grep(".*mean.* | .*std.*", names(Data), ignore.case = TRUE)
selectedcolumns <- c(1,2,Data1)
selectedData <- Data [,selectedcolumns]
# Uses descriptive activity names to name the activities in the data set
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels[,2]<- as.character(activityLabels[,2])
selectedData$Activity_Labels <- factor(selectedData$Activity_Labels, levels = activityLabels[,1], labels = activityLabels[,2])
# appropiately labels the data set with descriptive variable names
names(selectedData)<- gsub("^t", "time", names(selectedData))
names(selectedData)<- gsub("Acc", "Accelerometer", names(selectedData))
names(selectedData)<- gsub("Mag", "Magnitude", names(selectedData))
names(selectedData)<- gsub("Gyro", "Gyroscope", names(selectedData))
names(selectedData)<- gsub("^f", "Frequency", names(selectedData))
names(selectedData)<- gsub("BodyBody", "Body", names(selectedData))
#create a new dataset with the average of each variable for each activity and each subject
groupedData <- group_by(selectedData, subject, Activity_Labels)
sumarisedData <- summarise_each(groupedData, funs(mean))

write.table(sumarisedData, "tidy.txt", row.names = FALSE, quote = FALSE)

