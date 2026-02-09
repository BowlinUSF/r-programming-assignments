#Blog link: https://zoerprogramming.wordpress.com/2026/02/08/module-4-programming-structure-assignment/

library(ggplot2)

Frequency <- c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
BP <- c(103,87,32,42,59,109,78,205,135,176)

First <- c(1,1,1,1,0,0,0,0,"NA",1)
Second <- c(0,0,1,1,0,0,1,1,1,1)
FinalDecision <- c(0,1,0,1,0,1,0,1,1,1)


hist(Frequency)

hist(BP)

#This one is giving an error as the NA value in a character, so I am going to
#Use na.omit to remove it and then make a histogram, and then convert the new
#Version of First to numeric
First[First == "NA"] <- NA

First_no_NA <- na.omit(First)
First_no_NA <- as.numeric(First_no_NA)

hist(First_no_NA)

hist(Second)

hist(FinalDecision)

bloodDF <- data.frame(Frequency, BP, First, Second, FinalDecision)

ggplot(bloodDF, aes(x = as.factor(Frequency), y = BP)) +
  geom_boxplot() +
  labs(x = "Frequency")

