# Exercises 1, 3 and 4
x_test <- read.table("C:/Users/kevin/Desktop/R/GCD Final Project/X_test.txt", quote="\"", comment.char="")
y_test <- read.table("C:/Users/kevin/Desktop/R/GCD Final Project/y_test.txt", quote="\"", comment.char="")
x_train <- read.table("C:/Users/kevin/Desktop/R/GCD Final Project/X_train.txt", quote="\"", comment.char="")
y_train <- read.table("C:/Users/kevin/Desktop/R/GCD Final Project/y_train.txt", quote="\"", comment.char="")
features <- read.table("C:/Users/kevin/Desktop/R/GCD Final Project/features.txt", quote="\"", comment.char="")
subject_train <- read.table("C:/Users/kevin/Desktop/R/GCD Final Project/subject_train.txt", quote="\"", comment.char="")
subject_test <- read.table("C:/Users/kevin/Desktop/R/GCD Final Project/subject_test.txt", quote="\"", comment.char="")
activity_labels <- read.table("C:/Users/kevin/Desktop/R/GCD Final Project/activity_labels.txt", quote="\"", comment.char="")
test<-cbind(x_test,y_test,subject_test)
train<-cbind(x_train,y_train,subject_train)
table<-rbind(test,train)
colnames(table)<-c(features$V2,"activity","subject")
table$activity[which(table$activity==1)]=activity_labels[1,2]
table$activity[which(table$activity==2)]=activity_labels[2,2]
table$activity[which(table$activity==3)]=activity_labels[3,2]
table$activity[which(table$activity==4)]=activity_labels[4,2]
table$activity[which(table$activity==5)]=activity_labels[5,2]
table$activity[which(table$activity==6)]=activity_labels[6,2]

#  Exercise 2
m<-grep("mean",names(table))
s<-grep("std",names(table))
ej2<-sort(as.integer(c(m,s,ncol(table),ncol(table)-1)))
tableej2<-table[,ej2]

#  Exercise 5
tableej3<-tableej2 %>% 
        group_by(activity,subject) %>% 
        summarise_all(mean) %>% 
        print