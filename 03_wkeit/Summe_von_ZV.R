wuerfe = rep(NA, 10000)
for (i in 1:10000){
  wuerfe[i] = sum(sample(1:6, 100, replace = TRUE))
}
mean(wuerfe)
sd(wuerfe) #1.70 bei N = 1

plot(table(wuerfe)/10000)




### Würfel
x = rep(NA, 10000)
wid = 2
for (i in 1:length(x)){
  x[i] = sum(sample(1:6, wid, replace = TRUE))
}
hist(x, freq = FALSE)
mean(x) 
var(x)





#plot(table(x)/length(x), type='h')
xs = seq(20,50,0.1)
lines(xs, dnorm(xs, mean(x), sd(x)), col='red')

### unif
x = rep(NA, 10000)
wid = 1000
for (i in 1:10000){
  x[i] = mean(runif(wid,0,6))
}
mean(x) 
var(x)
hist(x, freq = FALSE)
xs = seq(1,6,0.01)
lines(xs, dnorm(xs, mean(x), sd(x)), col='red')

x = rep(NA, 10000)
wid = 10
for (i in 1:length(x)){
  x[i] = mean(rnorm(wid, 42, 10))
}
mean(x)
hist(x, freq = FALSE, 30)
library(car)
qqPlot(x)

mean(runif(100000,1,6)) # (6-1)/2
var(x) 
var(runif(100000,1,6)) # (6-1)^2/12 = 25/12 = 2.083
2.08 / 100
sqrt(2.08/100) 
sd(runif(100000,1,6))/10

hist(x, freq = FALSE, 30)

xs = seq(min(x),max(x),length.out = 100)
lines(xs,dnorm(xs,mean(x),sd(x)))

library(car)
qqPlot(x)
