library(dplyr)

setwd("C:/Users/Yan/Desktop/r")

#download and unzip the file
URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destFile <- "Dataset.zip"
if (!file.exists(destFile)){
  download.file(URL, destfile = destFile, mode='wb')
}
if (!file.exists("./UCI HAR Dataset")){
  unzip(destFile)
}

#set the working directory
setwd("./UCI HAR Dataset")

#reading test files
fea_test <- read.table("./test/X_test.txt", header = F)
act_test <- read.table("./test/y_test.txt", header = F)
sub_test <- read.table("./test/subject_test.txt", header = F)

#reading train files
fea_train <- read.table("./train/X_train.txt", header = F)
act_train <- read.table("./train/y_train.txt", header = F)
sub_train <- read.table("./train/subject_train.txt", header = F)

#read activity and feature description which consist 
#of number and description
act_desc <- read.table("./activity_labels.txt", header = F)
fea_desc <- read.table("./features.txt", header = F)

#give names to the description table 
names(act_desc) <- c("act_code","act_desc")
names(fea_desc) <- c("fea_code","fea_desc")

#combine test and train data
fea <- rbind(fea_test, fea_train)
act <- rbind(act_test, act_train)
sub <- rbind(sub_test, sub_train)

#give names to the data table
names(act) <- "act_code"
names(sub) <- "sub_code"

#561 columns in feature data has name in feature description
names(fea) <- fea_desc$fea_desc

#combine feature, activity, and subject tables
hur_data <- cbind(sub,act,fea)

#only get the mean and standard deviation measurement
sub_fea_name <- fea_desc$fea_desc[grep("mean\\(\\)|std\\(\\)",fea_desc$fea_desc)]
data_names <- c("sub_code","act_code",as.character(sub_fea_name))
hur_data <- subset(hur_data,select = data_names)

#rename the columname, replace the initial to the full desctription
names(hur_data) <- gsub("^t","time",names(hur_data))
names(hur_data)<-gsub("^f", "frequency", names(hur_data))
names(hur_data)<-gsub("Acc", "Accelerometer", names(hur_data))
names(hur_data)<-gsub("Gyro", "Gyroscope", names(hur_data))
names(hur_data)<-gsub("Mag", "Magnitude", names(hur_data))
names(hur_data)<-gsub("BodyBody", "Body", names(hur_data))

#join table to get each activity's description and rearrange the 
#order of the columns
hur_data <- merge(x=hur_data,y=act_desc,by="act_code",all.x=TRUE)
hur_data <- hur_data[,c(2, 69, 3:68)]

#create a second and independet tidy dataset with the average
#of each varialbe for each activity and each subject
sub_hur_data <- aggregate(.~sub_code + act_desc, hur_data, mean)


#save the second table to local file
write.table(sub_hur_data, file ="tidydata.txt", row.name = FALSE)

