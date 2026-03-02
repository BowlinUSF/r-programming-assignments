#Blog link: https://zoerprogramming.wordpress.com/2026/03/01/module-7-r-object-s3-vs-s4-assignment/
#Download any type of data (from the web or use datasets package) or create your own set. 
#I will use the built in dataset Iris
iris

#Then, on the second step, determine if generic function as discussed in this module 
#can be assigned to your data set, and if not, why?
head(iris, 6)
data("iris")
list(iris, 6)

#From this, the generic functions within R do work with this dataset and can be assigned to it

#In third and last step, explore if S3 and S4 can be assigned to your data set.

#For this, I will first use the base function within R "isS4()" to see if S4 can be assigned
isS4(iris)

#The console returns FALSE, which shows it cannot be assigned with S4
#With that in mind, we have already verified iris works with S3, as it works with
#Generic functions such as "print()" or "head()" above

#For question 5, first creating my own S3 dataset
s3 <- list(species = "Snow Leopard", family = "Felidae", classification = "Mammal")
s3

#Creating one for S4
#Having to set the class "Big Cat" first as it was giving errors, and R documentation helped me create the custom class
setClass("Big Cat",
         slots = list(
           species = "character",
           family = "character",
           classification = "character"
         )) 

s4 <- new("Big Cat", species = "Snow Leopard", family = "Felidae", classification = "Mammal")

#Verifying they are S3 and S4
isS4(s3)
isS4(s4)

