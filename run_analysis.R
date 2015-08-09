run_analysis <- function() {
  
  ## load test data
  test_data <- read.table("data/test/X_test.txt")
  test_activities_vector <- read.table("data/test/y_test.txt")
  test_subjectIDs_vector <- read.table("data/test/subject_test.txt")
  
  ## add IDs and activities of subjects columns to the right of the test data 
  test <- cbind(test_data, test_subjectIDs_vector, test_activities_vector)
  
  ## load training data
  train_data <- read.table("data/train/X_train.txt")
  train_activities_vector <- read.table("data/train/y_train.txt")
  train_subjectIDs_vector <- read.table("data/train/subject_train.txt")
  
  ## add IDs and activities of subjects columns to the right of the train data 
  train <- cbind(train_data, train_subjectIDs_vector, train_activities_vector)
  
  ## create big table with test and train data containing IDs and activities
  ## in last two columns
  all_data <- rbind(test,train)
  
  ## remove tables that are no longer used
  rm(test, test_subjectIDs_vector, test_activities_vector, test_data,train,train_subjectIDs_vector, train_activities_vector, train_data)
  
  ## load feature table
  features  <- read.table("data/features.txt")
  
  ## some renaming
  features$V2 = gsub('-mean', 'Mean', features$V2)
  features$V2 = gsub('-std', 'Std', features$V2)
  features$V2 = gsub('[-()]', '', features$V2)

  ## get column indizes of mean and std values
  mean_std_column_indizes <- features[grep(".*Mean.*|.*Std.*", features$V2),1]
  
  ## table containing only std and mean values, IDs and activities
  circumsized_data <- all_data[,c(mean_std_column_indizes,562,563)]
  
  ## remove tables that are no longer used
  rm(mean_std_column_indizes, all_data)
  
  ## load activity lables
  activities <- read.table("data/activity_labels.txt")
  
  ## transform activities column from integer to character
  circumsized_data  <- transform(circumsized_data, V1.2=as.character(V1.2))
  
  ## converting activities from numbers to descriptive string labels
  circumsized_data$V1.2 <- mapvalues(circumsized_data$V1.2, from = c(as.character(activities$V1)), to = c(as.character(activities[,2])), warn_missing = FALSE)
  
  ## get names of mean and std values
  mean_std_column_names <- features[grep(".*Mean.*|.*Std.*", features$V2),2]
  
  ## add ID and activity column labels
  mean_std_column_names <-  c(mean_std_column_names, "ID", "Activity")
  
  ## set names of columns
  names(circumsized_data)  <- mean_std_column_names
  
  ## remove tables that are no longer used
  rm(mean_std_column_names)
  
  ## convert columns to numeric, except activity column
  circumsized_data  <- cbind(apply(circumsized_data[1:87], 2, function(x) as.numeric(x)), circumsized_data[88])
  
  ## get ids of participants
  ids = unique(circumsized_data$ID)
  
  ## initialize empty data frame
  mean_table <-  data.frame()

  for(i in ids) {
    
    ## pick one subject
    subject <- circumsized_data[circumsized_data$ID == i,]
    
    for(j in 1:6) {
      
        ## pick one activity and check if the subject has done the activity
        if(sum(subject$Activity == activities[j,2]) != 0){
          
          ## select rows of subject with selected activity
          activity = subject[subject$Activity == activities[j,2],]
          
          ## calculate means of these rows
          mean = colMeans(activity[,1:86])
          
          ## translate row vector to column vector
          mean = t(mean)
          
          ## add ID and activity columns (for convenience I added these columns to the left)
          ## (column names for ID and Activity get lost at this point, but will be added again later)
          mean = cbind(activity[1,87], activity[1,88], mean)
          
          ## add the row containing ID, activity and mean values to our output table
          mean_table = rbind(mean_table,mean)
        }
    }
  }
  
  ## name first two columns
  colnames(mean_table)[1] <- "ID"
  colnames(mean_table)[2] <- "Activity"
  
  ## export cleaned table
  write.table(mean_table, "cleaned_table_of_means.txt", quote = FALSE, eol="\r \n", row.name=FALSE)
}