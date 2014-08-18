# the script looks for the data in "./UCI HAR Dataset/" folder. if the folder does not exist
# the zip file is downloaded and extracted in theb´working directory
if (!file.exists("UCI HAR Dataset/")) {
	fileName <- "UCI_HAR_Dataset.zip"
	url <- "https://d396qusza40orc.cloudfront.net/getdata/projectfiles/UCI%20HAR%20Dataset.zip"
	download.file(url, fileName, method="curl")
	unzip(fileName)
}


# read feature names, get the indexes for std() and mean() measures
features <- read.table("UCI HAR Dataset/features.txt")
featuresIdx <- grep("\\-mean\\(|\\-std\\(", features[, 2])

# read training datasets, put together subject and activity with measures
# select only the columns containing measurements of mean or std, stored in featuresIdx
x.train <- read.table("UCI HAR Dataset/train/X_train.txt")
y.train <- read.table("UCI HAR Dataset/train/y_train.txt")
sub.train <- read.table("UCI HAR Dataset/train/subject_train.txt")
data.train <- cbind(sub.train, y.train)
data.train <- cbind(data.train, x.train[, featuresIdx])

# read test datasets, put together subject and activity with measures
# select only the columns containing measurements of mean or std, stored in featuresIdx
x.test <- read.table("UCI HAR Dataset/test/X_test.txt")
y.test <- read.table("UCI HAR Dataset/test/y_test.txt")
sub.test <- read.table("UCI HAR Dataset/test/subject_test.txt")
data.test <- cbind(sub.test, y.test)
data.test <- cbind(data.test, x.test[, featuresIdx])

# data.tidy contains relevant data from both training and test data sets
data.tidy <- rbind(data.train, data.test)

# give descriptive activity names to name the activities in the data set
activities <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = TRUE)
data.tidy$activity <- activities[data.full$activity, 2]

# assign descriptive variable names to variables
names.tmp <- as.character(features[featuresIdx, 2])
names.tmp <- gsub('()', '', names.tmp, fixed=T)
names.tmp <- make.names(names.tmp)
names(data.tidy) <- c("subject", "activity", names.tmp)

# create a second, independent tidy data set with the average of each variable
# for each activity and each subject
data.melted <- melt(data.tidy, id = c("activity", "subject"), measure.vars = names.tmp)
data.avg <- dcast(data.melted, activity + subject ~ variable, mean)

# write the second dataset, containing data averages, to a file
write.table(data.avg, "tidy_data_avg.txt", row.names = FALSE)
