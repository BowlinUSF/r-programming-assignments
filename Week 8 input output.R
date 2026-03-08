#Blog post: https://zoerprogramming.wordpress.com/2026/03/08/module-8-input-output-string-manipulation-and-plyr-package/
install.packages("plyr")

library(data.table)
library(plyr)

Student_assignment_6 <- read.table("~/Assignment 6 Dataset.txt", header = TRUE, sep = ",")

y = ddply(Student_assignment_6, "Sex", transform, Grade.Average = mean(Grade))

sex = Student_assignment_6$Sex
mean(sex)

write.table(y, "Sorted_Average", sep = ",")

new_Student_assignment_6 <- subset(Student_assignment_6, grepl("[iI]", Student_assignment_6$Name))

write.table(new_Student_assignment_6, "Datasubset.csv", sep = ",")

write.csv(new_Student_assignment_6, "Datasubset2.csv", row.names = FALSE)
