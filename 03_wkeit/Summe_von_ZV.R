x = rep(NA, 10000)
wid = 2
for (i in 1:length(x)){
  x[i] = sum(sample(1:6, wid, replace = TRUE))
}
mean(x)
var(x)
plot(table(x), type='h')



x = rep(NA, 10000)
wid = 3
for (i in 1:length(x)){
  x[i] = sum(runif(wid, 0, 6))
}
mean(x)
var(x)
hist(x, freq = FALSE, 30)
xs = seq(min(x),max(x),length.out = 100)
lines(xs,dnorm(xs,mean(x),sd(x)))

library(car)
qqPlot(x)
