training_data<- read.table("train/X_train.txt")#reading training set into df
training_labels<-read.table("train/y_train.txt")#reading trainig labels into df
train_subjects<-read.table("train/subject_train.txt")#reading for subjects data
features<-scan("features.txt",character(),quote = "")#reading variable names into vector
n<-length(features)#finding length of variable names vector
features_names<-features[seq(2,n,2)]#selecting variable names
colnames(training_data)<-features_names#renaming columns of training data with apropriate names
activites_training<-read.table("train/y_train.txt")#reading labels for train set
activites_training<-recode(activites_training$V1,"1" =  "WALKING", "2" = "WALKING_UPSTAIRS","3"=  "WALKING_DOWNSTAIRS", 
                        "4"=  "SITTING", "5" =  "STANDING","6" =  "LAYING")#renaming activites train labels
training_data<-cbind(activites_train,training_data)#attaching column with activities names to training data
names(training_data)[1]<-"Activity"#Renaming new column appropriatly
training_data<-cbind(train_subjects,training_data)#Attaching subjects column
names(training_data)[1]<-"Subject"#Naming subject column properly

test_data<-read.table("test/X_test.txt")#reading test data into df
activites_test<-read.table("test/y_test.txt")#reading test data activities into df
test_subjects<-read.table("test/subject_test.txt")#reading subjects for test data
colnames(test_data)<-features_names #renaming column names appropriatly
activites_test<-recode(activites_test$V1,"1" =  "WALKING", "2" = "WALKING_UPSTAIRS","3"=  "WALKING_DOWNSTAIRS", 
                       "4"=  "SITTING", "5" =  "STANDING","6" =  "LAYING")# renaming activities names for test set
test_data<-cbind(activites_test,test_data)#attaching colimn with activities for test set
names(test_data)[1]<-"Activity"#Renaming new column appropriatly
test_data<-cbind(test_subjects,test_data)#Attaching subject column to test data
names(test_data)[1]<-"Subject"#naming subject column properly

merged_set<-rbind(test_data,training_data)#merging test and train data sets
selected<-merged_set[,grep("Subject|Activity|mean|std", names(merged_set), value=TRUE)]#selecting only needed observations
selected<-arrange(selected,Subject,Activity)#Arranging data frame by Subject and activity
selected<-group_by(selected,Subject,Activity)# Grouping by Subject and Activity
tidy_data<-summarise_all(selected,mean)# Finding mean of all non-grouped variables
write.table(tidy_data, file = "Tidy_data.txt")#Writing final file