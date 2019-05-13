setwd("~/Documents/workspace/stat/descriptive")

# Kategorial vs. 
kdata <- read.table('kdata.txt.gz', header=T, sep="\t")

### Scaling
plot(kdata$alter, kdata$einkauf, pch='.')
cor(kdata$alter, kdata$einkauf)


y = scale(kdata$alter)
hist(y)
x = scale(kdata$einkauf)
mean(y*x)
n = length(x)
mean(x*y)*n/(n-1)

### Random
n = 3
x = rnorm(n)
y = rnorm(n)
plot(x,y)
cor(rnorm(n), rnorm(n))



n = 3
for (i in 1:10) {
  print(cor(rnorm(n), rnorm(n))) 
}

