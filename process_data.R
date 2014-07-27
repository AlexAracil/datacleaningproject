## Fixing features labels to data
labels <- gsub("-|\\(|\\)","",features$V2)	## Removing "-" and "()" from labels
labels <- gsub("^t","Time",labels) 		## Replacing first "t" with "Time"
labels <- gsub("^f","Freq",labels)		## Replacing first "f" with "Freq"
labels <- gsub("mean","Mean",labels)
labels <- gsub("std","StdDev",labels)
labels <- gsub("Acc","Accelerometer",labels)
labels <- gsub("Gyro","Gyroscope",labels)
labels <- gsub("Mag","Magnitude",labels)
labels <- gsub("BodyBody","Body",labels)	## Fixing "double Body" label

## Assigning new labels to data names
names(x_test) <- labels
names(x_train) <- labels

## Extracting mean() and std() feature columns from data
index <- grep("mean\\(\\)|std\\(\\)",features$V2)  ## Selecting columns with "mean()" and "std()"
x_test_selection <- x_test[index]
x_train_selection <- x_train[index]

## Fixing activity labels

tocamel <- function(x){				## This function converts underscore to camelcase
  str <- strsplit(x, "\\_")[[1]]
  paste(toupper(substring(str, 1, 1)), substring(str, 2), sep="", collapse="")
}

act_labels <- tolower(activity_labels$V2)
act_labels <- sapply(act_labels, tocamel)

## Assigning new activity labels as factors
activity_test <- factor(y_test$V1, labels = act_labels)
activity_train <- factor(y_train$V1, labels = act_labels)

## Adding subject and activity to data
data_test <- cbind(subject_test, activity_test, x_test_selection)
data_train <- cbind(subject_train, activity_train, x_train_selection)

## Assigning labels to added columns
names(data_test)[1] <- "Subject"
names(data_train)[1] <- "Subject"
names(data_test)[2] <- "Activity"
names(data_train)[2] <- "Activity"

## Merging test and train data and writing to file
tidy_data <- rbind(data_train, data_test)
write.table(tidy_data, "./tidy_data.txt", quote=FALSE)

## Generating second data set with average data for subjects and activities
tidy_data_mean <- aggregate(. ~ Subject + Activity, data = tidy_data, mean)
write.table(tidy_data_mean, "./tidy_data_mean.txt", quote=FALSE)

## Cleaning everything except tidy_data and tidy_data_mean
rm(data_test, data_train, x_test, x_train, x_test_selection, x_train_selection)
rm(y_test, y_train, subject_test, subject_train, features, activity_labels)
rm(labels, act_labels, activity_test, activity_train, index)
