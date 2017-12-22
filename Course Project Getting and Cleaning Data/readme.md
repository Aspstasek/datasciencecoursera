For this course i work with dataset from Samsung Galaxy S smartphone.
Here are the tasks that i needed to do:
1)Merging the training and the test sets to create one data set.
2)Extracts only the measurements on the mean and standard deviation for each measurement.
3)Using descriptive activity names to name the activities in the data set
4)Appropriately label the data set with descriptive variable names.
5)From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

For the analysis of the dataset i divide the task in two big groups:
1)Reading two datasets and merging them
2)Selected and working with datasets

I've decided to comment each row for better understanding of script by others, so here i'm leave only couple of general explanations:

In the 10th and 21st row of script where I'm labelling the activities by their numerical code, i'm understand the much more better choice was to write a function for that, but as far as we have only 6 activities, that identical for both training and test sets i've thought that my straight way will be faster(to  write) and easier to understand, although he's not smart at all
The only external package that i used is dplyr for easy data manipulation and selecting
Tidy data set is grouped by Subject and  Activity and averaged by all non-grouped variables. Tidy data is 180 rows by 81 column

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
