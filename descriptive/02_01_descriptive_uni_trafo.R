## Transformation
# x Temp in Celcius, y in Fahrenheit
# y = 1.8 * x + 32
# Mittelwert ist linear
MW_X = 10
a = 1.8
b = 32
MW_y = a * MW_X + b #50

SD_X = 5
SD_Y = abs(a) * SD_X #9

# Simulationsstudie
set.seed(42) 
X = rnorm(10000,10,5)
mean(X) # 9.94
sd(X)   # 5.03
hist(X,100)

Y = 1.8*X + 32 #Gilt fuer alle Datenpunkte 
hist(Y, 100)
mean(Y) # 49.89
sd(Y)   #  9.05
sd(X) * 1.8


#################################
X = rgamma(1000,shape=1)
hist(X,100)
z = (X-mean(X))/ sd(X)
z=scale(X)
hist(z,100)




#################################
# 
library(MASS)
summary(Boston$crim) 


stripchart(Boston$crim, method="jitter")
stripchart(log10(Boston$crim), method="jitter") 
stripchart(Boston$crim, method="jitter", log='x') #Not 100% the same due to jitter

hist(Boston$crim,30)
hist(log(Boston$crim),30)





