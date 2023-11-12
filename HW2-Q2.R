setwd("C:\\Users\\Abdulrahman Razzak\\Documents\\Classes second half of fall\\CSC 302\\") # Sets the location of the csv file
df <- read.csv("WorldCupMatches.csv") # Reads the CSV File and then  assigns it to the databse "df" 
ncol(df) # Counts the number of columns in the data frame
nrow(df) # Counts the number of rows in the data frame
summary(df) # Summarizes the data frame using the summary( ) function
library(dplyr) # Loads the dplyr library
df %>% distinct(City) %>% nrow() # Uses the dplyr distinct( ) function to find unique locations then counts the number of rows usign the nrow( ) function
mean(df$Attendance,  na.rm = TRUE) # Uses the mean( ) function to find the mean of the Attendance while exculding the na values.
aggregate(df$Home.Team.Goals, by=list(df$Home.Team.Name), FUN=sum) # uses the aggregate( ) function to sum up the goals for each team in the home team name column
df %>% group_by(Year) %>% summarise(sum_attendance = sum(Attendance)) # Uses the dplyr library's group_by function to find the average number of attendees for each year


