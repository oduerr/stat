library(MASS)

# Data from 506 Boston Neighborhoods
# Boston$crim per capita crime rate
summary(Boston$crim) 
#    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
#0.00632  0.08204  0.25651  3.61352  3.67708 88.97620 
par(mfcol = c(2,2))
hist(Boston$crim,30) 
hist(log(Boston$crim),30) 
stripchart(Boston$crim, method="jitter")
stripchart(log(Boston$crim), method="jitter")
