
library(magrittr)
library(dplyr)
library(stringr)

#read labels
column_labels_raw <- read.delim("UCI HAR Dataset/features.txt", sep=" ", header = F)
column_labels <- column_labels_raw %>% 
    setNames(c("key", "label")) %>% 
    mutate(label = str_replace_all(str_to_lower(label),"-","_"))

activity_labels_raw <- read.delim("UCI HAR Dataset/activity_labels.txt", sep=" ", header = F)
activity_labels <- activity_labels_raw %>% 
    setNames(c("activity_key", "activity_label")) %>% 
    mutate(activity_label = str_to_lower(activity_label))

rm(activity_labels_raw, column_labels_raw)

# read, merge and subset data
train_data <- read.fwf("UCI HAR Dataset/train/X_train.txt", width=rep_len(16,561), header = F)
test_data <- read.fwf("UCI HAR Dataset/test/X_test.txt", width=rep_len(16,561), header = F)

data_raw <- bind_rows(train_data,test_data)
names(data_raw) <- column_labels$label

train_activity_data <- read.delim("UCI HAR Dataset/train/y_train.txt", header = F)
test_activity_data <- read.delim("UCI HAR Dataset/test/y_test.txt", header = F)

activity_data <- bind_rows(train_activity_data, test_activity_data)
names(activity_data) <- c("activity_key")

train_subject_data <- read.delim("UCI HAR Dataset/train/subject_train.txt", header = F)
test_subject_data <- read.delim("UCI HAR Dataset/test/subject_test.txt", header = F)

subject_data <- bind_rows(train_subject_data, test_subject_data)
names(subject_data) <- c("subject_key")

columns_to_extract <- grep("_mean\\(\\)|_std\\(\\)", column_labels$label, value = T)

data_all <- bind_cols(data_raw[,columns_to_extract], activity_data, subject_data)

# name activities

data_complete <- data_all %>% 
    left_join(activity_labels, by=c("activity_key" = "activity_key")) %>% 
    select(-activity_key)

# average per activity and subject

mean_per_activity_and_subject <- data_complete %>% 
    group_by(activity_label, subject_key) %>% 
    summarize_all(mean)

# write results to txt file, as required by the project

write.table(mean_per_activity_and_subject, "output.txt", row.names = F)

all_vars <- ls()
rm(list = all_vars[!all_vars %in% c("data_complete","mean_per_activity_and_subject")])
rm(all_vars)
