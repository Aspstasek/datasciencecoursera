The dataset folder contains some files and folders

- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

 The following files are available for the train and test data. Their descriptions are equivalent.
- 'train/subject_train.txt': Each row identifies the subject who performed the
 activity for each window sample. Its range is from 1 to 30.
- 'train/Inertial Signals not used in this analysis
- 'test/Inertial Signals not used in this analysis

Here are some brief explanations for the variables in dataset:
- 'Subject': Subject who perform the activity
- 'Activity': type of activity performed


For this analysis were selected signals from gyroscope and accelerometer
by three axis (X,Y,Z)
In Tidy dataset only mean and standard values was selected, and grouped by
Subject and Activity counting the mean of all other columns
