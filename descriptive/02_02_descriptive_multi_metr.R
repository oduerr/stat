setwd("~/Documents/workspace/stat/descriptive")

# Kategorial vs. 
kdata <- read.table('kdata.txt.gz', header=T, sep="\t")


#stripchart(kdata$alter,  method="jitter")
hist(kdata$alter, 70)
z1 = scale(kdata$alter)
z2 = (kdata$alter - mean(kdata$alter)) / sd(kdata$alter)
max(abs(z1-z2))
hist(z1, 70)
