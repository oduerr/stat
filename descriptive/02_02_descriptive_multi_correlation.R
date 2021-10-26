### Random
n = 3000
groesse = rnorm(n, 150, 10)
hist(groesse)
armspanne =  rnorm(n, 150, 30)
plot(groesse, armspanne)
cor(groesse, armspanne)


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

