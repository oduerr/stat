setwd("~/Documents/workspace/stat/descriptive")

# Kategorial vs. 
kdata <- read.table('kdata.txt.gz', header=T, sep="\t")

plot(kdata$alter, kdata$einkauf)
