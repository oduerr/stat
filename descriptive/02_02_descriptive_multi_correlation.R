setwd("~/Documents/workspace/stat/descriptive")

# Kategorial vs. 
kdata <- read.table('kdata.txt.gz', header=T, sep="\t")

### Scaling
plot(kdata$alter, kdata$einkauf)
cor(kdata$alter, kdata$einkauf)
ascale = scale(kdata$alter)
hist(ascale)
escale = scale(kdata$einkauf)
n = length(ascale)
mean(ascale*escale)*n/(n-1)

### Random
n = 10000
cor(rnorm(n), rnorm(n))

n = 3
for (i in 1:10) {
  print(cor(rnorm(n), rnorm(n))) 
}

