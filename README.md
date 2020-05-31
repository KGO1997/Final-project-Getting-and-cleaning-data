# Final-project-Getting-and-cleaning-data
Repository created to deliver the final project

#### The following description corresponds to the R file with the name run_analysis.R

The script was separated into three parts: data collection and order, selection 
of those measurements with mean and standard deviation values and finally summary 
of these data obtained in the second point

  * The variables defined from the read.table function correspond to values or 
names of variables that are used for the construction of the final table from 
which one works. Using the cbind and rbind functions, the table is constructed 
with all the data. The variable features is used to give the names to each of 
the variables. Finally, using the variable activity_labels, each of the 
activities, which are encoded, is assigned a descriptive name.

  * In the second point, using the grep function, we find the indices of the 
variables that refer to mean or standard deviation values. These are used to 
subset and obtain a table with the corresponding values.

  * For the last task, pipes are used. The data is grouped by activity and subject,
and finally the summarize_all function is used to find the mean values of each 
variable depending on the activity and the subject that performs it.
