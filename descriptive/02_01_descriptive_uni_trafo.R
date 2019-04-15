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

Y = -10*X + 5 #Gilt fuer alle Datenpunkte 
hist(Y, 100)
mean(Y) # 49.89
sd(Y)   #  9.05
sd(X) * 10
