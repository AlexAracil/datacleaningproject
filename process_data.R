## Assigning features labels to data
names(x_test) <- gsub("-|\\(|\\)","",tolower(features$V2)) ## Removing "-" and "()" from labels
names(x_train) <- gsub("-|\\(|\\)","",tolower(features$V2))

## Extracting mean() and std() feature columns from data
index <- grep("mean\\(\\)|std\\(\\)",features$V2)  ## Selecting columns with "mean()" and "std()"
x_test_selection <- x_test[index]
x_train_selection <- x_train[index]

## Assigning activity labels
activity_test <- factor(y_test$V1, labels = activity_labels$V2)
activity_train <- factor(y_train$V1, labels = activity_labels$V2)

## Adding subject and activity to data
data_test <- cbind(subject_test, activity_test, x_test_selection)
data_train <- cbind(subject_train, activity_train, x_train_selection)

## Assigning lables to added columns
names(data_test)[1] <- "subject"
names(data_train)[1] <- "subject"
names(data_test)[2] <- "activity"
names(data_train)[2] <- "activity"

## Mergin test and train data and writing to file
tidy_data <- rbind(data_train, data_test)
write.table(tidy_data, "./tidy_data.txt", quote=FALSE)

## Cleaning everything except tidy_data
rm(data_test, data_train, x_test, x_train, x_test_selection, x_train_selection)
rm(y_test, y_train, subject_test, subject_train, features, activity_labels)
rm(activity_test, activity_train, index)

## Generating second data.frame with mean data
tidy_data_mean <- aggregate(. ~ subject + activity, data = tidy_data, mean)
write.table(tidy_data_mean, "./tidy_data_mean.txt", quote=FALSE)