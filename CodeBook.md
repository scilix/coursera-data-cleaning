# CodeBook

The script **run_analysis.R** creates two dataframes and a txt.file in the project directory.

## Variable names

### First dataset, named **data_named**:

**Rows**: Each row contains a the data for a single measurement.

**Columns**:

- tbodyacc_mean()_x: See file *UCI HAR Dataset/features_info.txt*
-	tbodyacc_mean()_y: See file *UCI HAR Dataset/features_info.txt*
-	tbodyacc_mean()_z: See file *UCI HAR Dataset/features_info.txt*
-	tbodyacc_std()_x: See file *UCI HAR Dataset/features_info.txt*
-	tbodyacc_std()_y: See file *UCI HAR Dataset/features_info.txt*
-	tbodyacc_std()_z: See file *UCI HAR Dataset/features_info.txt*
-	tgravityacc_mean()_x: See file *UCI HAR Dataset/features_info.txt*
-	tgravityacc_mean()_y: See file *UCI HAR Dataset/features_info.txt*
-	tgravityacc_mean()_z: See file *UCI HAR Dataset/features_info.txt*
-	tgravityacc_std()_x: See file *UCI HAR Dataset/features_info.txt*
-	tgravityacc_std()_y: See file *UCI HAR Dataset/features_info.txt*
-	tgravityacc_std()_z: See file *UCI HAR Dataset/features_info.txt*
- tbodyaccjerk_mean()_x: See file *UCI HAR Dataset/features_info.txt*
-	tbodyaccjerk_mean()_y: See file *UCI HAR Dataset/features_info.txt*
-	tbodyaccjerk_mean()_z: See file *UCI HAR Dataset/features_info.txt*
-	tbodyaccjerk_std()_x: See file *UCI HAR Dataset/features_info.txt*
-	tbodyaccjerk_std()_y: See file *UCI HAR Dataset/features_info.txt*
-	tbodyaccjerk_std()_z: See file *UCI HAR Dataset/features_info.txt*
-	tbodygyro_mean()_x: See file *UCI HAR Dataset/features_info.txt*
-	tbodygyro_mean()_y: See file *UCI HAR Dataset/features_info.txt*
-	tbodygyro_mean()_z: See file *UCI HAR Dataset/features_info.txt*
-	tbodygyro_std()_x: See file *UCI HAR Dataset/features_info.txt*
-	tbodygyro_std()_y: See file *UCI HAR Dataset/features_info.txt*
-	tbodygyro_std()_z: See file *UCI HAR Dataset/features_info.txt*
-	tbodygyrojerk_mean()_x: See file *UCI HAR Dataset/features_info.txt*
-	tbodygyrojerk_mean()_y: See file *UCI HAR Dataset/features_info.txt*
-	tbodygyrojerk_mean()_z: See file *UCI HAR Dataset/features_info.txt*
-	tbodygyrojerk_std()_x: See file *UCI HAR Dataset/features_info.txt*
-	tbodygyrojerk_std()_y: See file *UCI HAR Dataset/features_info.txt*
-	tbodygyrojerk_std()_z: See file *UCI HAR Dataset/features_info.txt*
-	tbodyaccmag_mean(): See file *UCI HAR Dataset/features_info.txt*
-	tbodyaccmag_std(): See file *UCI HAR Dataset/features_info.txt*
-	tgravityaccmag_mean(): See file *UCI HAR Dataset/features_info.txt*
-	tgravityaccmag_std(): See file *UCI HAR Dataset/features_info.txt*
-	tbodyaccjerkmag_mean(): See file *UCI HAR Dataset/features_info.txt*
-	tbodyaccjerkmag_std(): See file *UCI HAR Dataset/features_info.txt*
-	tbodygyromag_mean(): See file *UCI HAR Dataset/features_info.txt*
-	tbodygyromag_std(): See file *UCI HAR Dataset/features_info.txt*
-	tbodygyrojerkmag_mean(): See file *UCI HAR Dataset/features_info.txt*
-	tbodygyrojerkmag_std(): See file *UCI HAR Dataset/features_info.txt*
-	fbodyacc_mean()_x: See file *UCI HAR Dataset/features_info.txt*
-	fbodyacc_mean()_y: See file *UCI HAR Dataset/features_info.txt*
-	fbodyacc_mean()_z: See file *UCI HAR Dataset/features_info.txt*
-	fbodyacc_std()_x: See file *UCI HAR Dataset/features_info.txt*
-	fbodyacc_std()_y: See file *UCI HAR Dataset/features_info.txt*
-	fbodyacc_std()_z: See file *UCI HAR Dataset/features_info.txt*
-	fbodyaccjerk_mean()_x: See file *UCI HAR Dataset/features_info.txt*
-	fbodyaccjerk_mean()_y: See file *UCI HAR Dataset/features_info.txt*
-	fbodyaccjerk_mean()_z: See file *UCI HAR Dataset/features_info.txt*
-	fbodyaccjerk_std()_x: See file *UCI HAR Dataset/features_info.txt*
-	fbodyaccjerk_std()_y: See file *UCI HAR Dataset/features_info.txt*
-	fbodyaccjerk_std()_z: See file *UCI HAR Dataset/features_info.txt*
-	fbodygyro_mean()_x: See file *UCI HAR Dataset/features_info.txt*
-	fbodygyro_mean()_y: See file *UCI HAR Dataset/features_info.txt*
-	fbodygyro_mean()_z: See file *UCI HAR Dataset/features_info.txt*
- fbodygyro_std()_x: See file *UCI HAR Dataset/features_info.txt*
-	fbodygyro_std()_y: See file *UCI HAR Dataset/features_info.txt*
-	fbodygyro_std()_z: See file *UCI HAR Dataset/features_info.txt*
-	fbodyaccmag_mean(): See file *UCI HAR Dataset/features_info.txt*
-	fbodyaccmag_std(): See file *UCI HAR Dataset/features_info.txt*
-	fbodybodyaccjerkmag_mean(): See file *UCI HAR Dataset/features_info.txt*
-	fbodybodyaccjerkmag_std(): See file *UCI HAR Dataset/features_info.txt*
-	fbodybodygyromag_mean(): See file *UCI HAR Dataset/features_info.txt*
-	fbodybodygyromag_std(): See file *UCI HAR Dataset/features_info.txt*
-	fbodybodygyrojerkmag_mean(): See file *UCI HAR Dataset/features_info.txt*
-	fbodybodygyrojerkmag_std(): See file *UCI HAR Dataset/features_info.txt*
-	subject_key: Integer key identifying the subject
-	activity_label: String value naming the performed activity.

### Second dataset, named **mean_per_activity_and_subject**:

**Rows**: Each row contains the average of all measurements for the combination of activity and subject given in the coloumns *subject_key* and *activity_label* in this row.

**Columns**: Same as in the first dataset, but *subject_key* and *activity_label* are now the first and second row.

### File, named **output.txt**:

The data given by the second data set, but the first row of the file contains the column names. There are no row names given.


## Transformation steps

First dataset:

- Test and Train data are read from the files *UCI HAR Dataset/train/X_train.txt* and *UCI HAR Dataset/train/X_train.txt* and merged into a single dataset by row-binding the two dataframes
- The columns are named with the feature they represent using the labels from the file *UCI HAR Dataset/features.txt*.
- The names of the relevant columns are determined using a regular expression such that all columns containing "_mean()" or "_std()" will be extracted later.
- The activity data is read from the files *UCI HAR Dataset/train/y_train.txt* and *UCI HAR Dataset/test/y_test.txt* and merged into a single dataset by row-binding the two dataframes.
- The activity dataframe has only one column and is given the "activity_key".
- The subject data is read from the files *UCI HAR Dataset/train/subject_train.txt* and *UCI HAR Dataset/test/subject_test.txt* and merged into a single dataset by row-binding the two dataframes.
- The subject dataframe has only one column is given the name "subject_key".
- All three dataframes have been treated in the same manner and can therefore be combined by column-binding.
- The resulting dataframe contains all data columns with *mean* or *std* values as well as the activity key and subject key
- The final dataframe is created by replacing the column *activtiy_key* with a column named *activity_label* which contains the string label for the corresponding activity. The data for this is read from *UCI HAR Dataset/activity_labels.txt*.

Second dataset:

- The first data set is grouped by *activity_label* and *subject_key* and subsequently summarized by a call to mean().
- The resulting dataframe contains in each row the average of all measurements from the first dataset for a certain combination of activity and subject.

Output file:

- The *output.txt* is created using write.table() and row names are left out.