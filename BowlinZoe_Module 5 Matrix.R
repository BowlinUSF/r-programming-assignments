#Blog post: https://zoerprogramming.wordpress.com/2026/02/16/module-5-doing-math/

#Finding the inverse of a matrix

A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

#The following functions will fail
inverse_A <- solve(A)
inverse_B <- solve(B)

det(B)
det(A)

#From the helper notes posted:
# Transpose (flip rows/columns)
A_t <- t(A)
B_t <- t(B)

# Multiply matrix by a vector
v <- 1:10
A_multiplied <- A %*% v

# Multiply two matrices (key step)
C <- A %*% B
dim(C)   # [1] 10 100
