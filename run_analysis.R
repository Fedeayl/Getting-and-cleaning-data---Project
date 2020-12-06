# run_analysis

# Download files

Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(Url, destfile = "data.zip" )
unzip("data.zip") 

# Read activities and feautres
features <- read.table("./UCI HAR Dataset/features.txt")
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Read train data
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_test <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Read test data
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

#Combine variables
test  <- cbind(subject_test, y_test, X_test)
train <- cbind(subject_train, y_train, X_train)

#Merge both datasets
data <- rbind(test, train)

# Set labels 
names(data) <- c("subject", "activity", as.character(features$V2))
data$activity <- factor(data$activity, levels= activities$V1, labels=activities$V2)

# Selected column names
cnames <- colnames(data)
cnames <- grep("std\\(\\)|mean\\(\\)|activity|subject", cnames, value=TRUE)

# Filter by cnames
data <-  data[, cnames]
data <- aggregate( . ~ subject + activity, data = data, FUN = mean )

# Save dataset
write.table(data, "Tidy_data.txt")
read.table("Tidy_data.txt")
