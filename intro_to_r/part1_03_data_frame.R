# 3 Vectors
n = c(2.0, 3, 5) 
s = c("aa", "bb", "cc") 
b = c(TRUE, FALSE, TRUE) 
o = as.ordered(11:13)
df = data.frame(nn=n, s, b, o) 
str(df)
View(df) #or double clicking

df[1,1:4]
df[,1]
df$n


# Printing
df
str(df)
View(df) #or double clicking

# Build in Data Frames
#df = iris #For old behaviour
df = iris
str(df)

# Dimensions
dim(df)
nrow(df)
ncol(df)

# Selection
df[1,1]
df[,1]
df$Sepal.Length #!!!Use the Autocompletion!!!Selection of columns
df$Sepal.Length[1] #Selection of columns

# Subsetting
v = df$Species == 'setosa'
v
df[df$Species == 'setosa',] #Only the ones for which v is TRUE

#Deleting Column
df$Species = NULL


