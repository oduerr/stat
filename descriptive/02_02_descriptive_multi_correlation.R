#### Korrelationen sowie auf den Folien.
y = c(1,2,3,4,5)
x = c(1.5,2.2,3.3,4.4,5.4)
plot(x,y)
zx = scale(x)
zx = (x - mean(x))/sd(x)
zy = scale(y)
sum(zx*zy)/(length(x)-1)
cor(x,y)
#

x = -10:10
y = x^2
plot(x,y)
cor(x,y)
rank(x)
rank(y)
cor(rank(x), rank(y)) #Spearman
cor(x,y, method = 'spearman') #Spearman
#





















# Z-Trafos
z1 = scale(x)
z1 = (x - mean(x))/sd(x)
z2 = scale(y)

plot(z1,z2)

# Correlation
sum(z1*z2)/(length(z1)-1)
cor(x,y)



### Spearman ###
cor(x1,x2)
x = c(-1,40,3,2.1)
y = c(1,4,3,-20000)

x = 1:100
y = x^2
cor(x,y)
cor(x,y, method = 'spearman')
cor(rank(x), rank(y)) 


n = 1000
### Daten ####
x1 = rnorm(n)
x2 = 10*x1#rnorm(n) 

### Z-Trafo####
z1 = scale(x1)
z2 = scale(x2)
plot(z1,z2)
### Berechung des Korrelations Koeffizienten (nach Pearson)####
sum(z1*z2)/(n-1)



xy = matrix(runif(2*1000), ncol=2)
plot(xy)
### Rotate about 30 Degrees
theta = 30
rot = matrix(c(cos(theta), -sin(theta), sin(theta), cos(theta)), ncol=2)
xy_rot = xy %*% rot
plot(xy_rot)
cor(xy_rot[,1], xy_rot[,2])

x = c(1,3,5)
sd(x)

x = c(1,2,3,4,5)
y = c(1.2, 2.3, 3.1, 4.2, 5.1)
z1 = scale(x)
z2 = scale(y)
sum(z1*z2)/(length(x)-1)
cor(x,y)

#### Aufgabe in Class
n = 30
groesse = rnorm(n, 150, 10)
hist(groesse)
armspanne = 1.05*groesse + rnorm(n, 0, 10)
hist(armspanne)
plot(groesse, armspanne)
cor(groesse, armspanne)
#a) 
groesse = 150
armspanne = 1.05*groesse + rnorm(n, 0, 10)
mean(armspanne) #~1.05*150 = 157.5

#b) Staerker Zusammenhang
armspanne = 1.05*groesse + rnorm(n, 0, 2)
cor(groesse, armspanne)
plot(groesse, armspanne)

### Demo for tg
n = 5
cors = rep(NA, 1000)
for (i in 1:1000) {
  lemons = rnorm(n, 0, 50)
  fatalities = rnorm(n, 150, 10)
  cors[i] = cor(lemons, fatalities)
}
hist(cors,30)

cor(groesse, armspanne)

#c) Kein Zusammenhang
armspanne = rnorm(n, 0, 1)
plot(groesse, armspanne)
cor(groesse, armspanne)


### Random
n = 3
x = rnorm(n)
y = rnorm(n) #x hat keinen Einfluss auf y
cor(x,y)

n = 3
for (i in 1:10) {
  print(cor(rnorm(n), rnorm(n))) 
}


n = 50
for (i in 1:10) {
  print(cor(rnorm(n), rnorm(n))) 
}






### Random
n = 30000
x = rnorm(n)
y = rnorm(n) #x hat keinen Einfluss auf y
#plot(x,y) 
cor(rnorm(n), rnorm(n))

n = 3000
for (i in 1:10) {
  print(cor(rnorm(n), rnorm(n))) 
}



##########$
#Simulations
n = 30000
x = rnorm(n)
y = x + rnorm(n) #x hat keinen Einfluss auf y
#plot(x,y) 
cor(x,y)



####Schuhgrösse gegen Alter
n = 100
gender = sample(c('F', 'M'), n, replace = TRUE)
shoesize = rnorm(n, 45, 4)
n_f = sum(gender == 'F')
shoesize[gender == 'F'] = rnorm(n_f, 40, 4)

money = rnorm(n, 50, 10)
money[gender == 'F'] = rnorm(n_f, 40,10)

plot(money, shoesize)
cor(money, shoesize)


######### Personen
H = 350000
P = 0.5*H + 2*0.28*H + 3*0.117*H + 4*0.082*H + 5*0.027*H
PAlleine = 0.5*H

(PAlleine) / P




