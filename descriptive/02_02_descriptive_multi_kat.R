setwd("~/Documents/workspace/stat/descriptive")

# Kategorial vs. 
kdata <- read.table('kdata.txt.gz', header=T, sep="\t")
kdata$zivilstand = factor(kdata$zivilstand, c('Single', 'Konkubinat', 'Verheiratet'))

boxplot(einkauf ~ zivilstand + geschlecht, data=kdata, notch=TRUE)
stripchart(einkauf ~ zivilstand, method="jitter", kdata, vertical = TRUE)
stripchart(einkauf ~ zivilstand, method="jitter", kdata[1:100,], vertical = TRUE)


#install.packages("titanic")
library(titanic)
titanic = titanic_train[,c('Survived', 'Pclass')]
head(titanic)

tt = table(titanic_train$Survived, titanic_train$Pclass)
rowSums(as.matrix(tt))
plot(table(titanic_train$Pclass, titanic_train$Survived))

#### Unabhängigkeit
survived = sample(c(FALSE, TRUE), 891, replace=TRUE, prob = c(549, 342)/891)
pclass = sample(1:3, 891, replace=TRUE, prob = c(216, 184, 491)/891)
plot(table(survived, pclass))
plot(table(pclass, survived))

