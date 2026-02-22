#Blog post: https://zoerprogramming.wordpress.com/2026/02/22/module-6-doing-math-in-r-part-2/
#1. Consider A=matrix(c(2,0,1,3), ncol=2) and B=matrix(c(5,2,4,-1), ncol=2).
A = matrix(c(2, 0, 1, 3), ncol = 2)
B = matrix(c(5, 2, 4, -1), ncol = 2)

#a) Find A + B
A + B

#b) Find A - B
A - B

#2. Using the diag() function to build a matrix of size 4 with the following 
#values in the diagonal 4,1,2,3.
diag_matrix <- matrix(1:16, nrow = 4, ncol = 4)

diag(diag_matrix) <- c(4, 1, 2, 3)
print(diag_matrix)

#3. Generate the following matrix:

## [,1] [,2] [,3] [,4] [,5]
## [1,] 3 1 1 1 1
## [2,] 2 3 0 0 0
## [3,] 2 0 3 0 0
## [4,] 2 0 0 3 0
## [5,] 2 0 0 0 3
#Hint: You can use the command diag() to build it.
built_matrix <- diag(3, 5)

built_matrix[1, ] <- c(3, 1, 1, 1, 1)

built_matrix[2, 1] <- 2
built_matrix[3, 1] <- 2
built_matrix[4, 1] <- 2
built_matrix[5, 1] <- 2

built_matrix

