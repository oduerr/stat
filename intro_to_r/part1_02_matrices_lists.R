## Matrices and Lists
d = seq(1,12)
m = matrix(d, nrow = 3, byrow = TRUE)
dim(m) #3 4
m

## Broadcasting, also in e.g. python 
m * 10 #elemetwise
exp(m) #elemetwise
log(exp(m))
m ^ 2

## Broadcasting with vectors
v = c(1,2,3,4)
dim(v) #NULL
# v has no dimension it's used as a row, or column vector. Depending how it fit's
m * v
v * m

## R madness, cyling
m * c(1,2)

## Some linear algebra
vrand = rnorm(16) #16 random numbers
m2 = matrix(vrand,nrow = 4)
m2 
eigen(m2)
m2_inv = solve(m2)
m2_inv * m2 #Not I(4)
m2_inv %*% m2 #Note matrix multiplication with %*%
m2 %*% m2_inv
