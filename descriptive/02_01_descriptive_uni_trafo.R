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
X = rnorm(1000000,10,5)
mean(X) # 9.94
sd(X)   # 5.03
hist(X,100)
median(X) 

Y = 1.8*X + 32 #Gilt fuer alle Datenpunkte 
hist(Y, 100)
10.004*1.8+32
mean(Y) # 49.89
sd(Y)   #  9.05
sd(X) * 1.8

median(Y) 

xs = 1:100
df = data.frame(x = xs, y = exp(xs/10))
plot(df$x, log10(df$y))
plot(df$x, df$y, log="y")

####### Z-Trafo Form bleibt erhalten (Aufgabe ) ######
X = rexp(1000)
hist(X,100)
sd(X)
z = (X-mean(X))/ sd(X)
z=scale(X)
hist(z,100)

#######. Demo Logarithmus ##########
library(MASS)
summary(Boston$crim) 


stripchart(Boston$crim, method="jitter")
stripchart(log10(Boston$crim), method="jitter") 
stripchart(Boston$crim, method="jitter", log='x') #Not 100% the same due to jitter

hist(Boston$crim)
hist(log(Boston$crim))



X = runif(10000,0,2)
hist(X)
hist(X^2)






