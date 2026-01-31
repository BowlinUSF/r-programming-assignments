#Setting all the data
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")

ABC_poll_results <- c(4, 62, 51, 21, 2, 14, 15)
CBS_poll_results <- c(12, 75, 43, 19, 1, 21, 19)

#Combining them into one data frame titled "electrion2016_df" to show
#the results for each candidate from each poll
election2016_df <- data.frame(Name = Name, ABC = ABC_poll_results, CBS = CBS_poll_results)

#Calling the data frame to see the data all together
election2016_df
