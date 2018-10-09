# Data Frames are build in
# or use
# install.packages('tidyverse')
library(tibble) #tibble modern data frames (with better printing)



# 3 Vectors
n = c(2, 3, 5) 
s = c("aa", "bb", "cc") 
b = c(TRUE, FALSE, TRUE) 
o = as.ordered(11:13)
df = data.frame(n, s, b, o) 

df[1,1:4]
df$n

df = tibble(n, s, b, o)
#

# Printing
df
str(df)
View(df) #or double clicking

# Build in Data Frames
#df = iris #For old behaviour
df = as.tibble(iris)
df
str(df)

# Dimensions
dim(df)
nrow(df)

# Selection
df[1,1]
df$Sepal.Length #Selection of columns
df$Sepal.Length[1] #Selection of columns

# Subsetting
v = df$Species == 'setosa'
v
df[v,] #Only the ones for which v is TRUE

#Deleting Column
df$Species = NULL




