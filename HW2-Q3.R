setwd("C:\\Users\\Abdulrahman Razzak\\Documents\\Classes second half of fall\\CSC 302\\") # Sets the location of the csv file
df <- read.csv("metabolite.csv") # Reads the CSV File and then  assigns it to the databse "df" 
num_alzheimers <- sum(df$Label == "Alzheimer", na.rm = TRUE) #a) Finds the number of Alzheimer's patients in the dataset.
head(num_alzheimers) # Prints the number of Alzheimetr paitents
colSums(is.na(df)) #b) uses the is.na( ) function to determine the number of missing values for each column.
library(dplyr) # loads the dpylr library
new_df <- df %>% filter(!is.na(Dopamine)) # c) uses dplyr to remove rows with missing values in the Dopamine column and creates a new data frame called "new_df".
median_c4_OH_Pro <- median(new_df$c4.OH.Pro, na.rm = TRUE) # d) calulcate the median of the c4_OH_Pro column in the New Dataframe
new_df$c4.OH.Pro[is.na(new_df$c4.OH.Pro)] <- median_c4_OH_Pro #d) replaces the missing values in the c4_OH_Pro with the median of the sam column
head(new_df)

