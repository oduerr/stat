x = rep(NA, 10000)
wid = 1
for (i in 1:length(x)){
  x[i] = mean(sample(1:6, wid, replace = TRUE))
}
mean(x) 
var(x)
plot(table(x)/length(x), type='h')


x = rep(NA, 10000)
wid = 1
for (i in 1:length(x)){
  x[i] = mean(runif(wid, 1, 6))
}
mean(x)

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
