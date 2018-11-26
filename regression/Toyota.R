car.df <- read.csv("~/Dropbox/__HTWG/BI/Course_Shmueli_DO_NOT_SHARE/DMBA-R-datasets/ToyotaCorolla.csv")


# use first 1000 rows of data
car.df <- car.df[1:1000, ]

# select variables for regression
selected.var <- c(3, 4, 7, 8, 9, 10, 12, 13, 14, 17, 18)

# partition data
set.seed(1)  # set seed for reproducing the partition
train.index <- sample(c(1:1000), 600)  
train.df <- car.df[train.index, selected.var]
valid.df <- car.df[-train.index, selected.var]

str(train.df)

# use lm() to run a linear regression of Price on all the predictors in the
# training set (it will automatically turn Fuel_Type into dummies).
# use . after ~ to include all the remaining columns in train.df as predictors.
car.lm <- lm(Price ~ ., data = train.df)
summary(car.lm)


########################
# Predicting on the validation set
library(forecast)
car.lm.pred <- predict(car.lm, valid.df)
all.residuals <- valid.df$Price - car.lm.pred
length(all.residuals[which(all.residuals > -1406 & all.residuals < 1406)])/400
hist(all.residuals, breaks = 25, xlab = "Residuals", main = "")

