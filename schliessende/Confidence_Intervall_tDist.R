# Random Data
X = matrix(rnorm(4*1000), nrow=1000)
xn = rowMeans(X)
sx = apply(X, 1, sd)


t = xn/(sx/sqrt(4)) # Calculation of t-statistic
hist(t,100, freq=FALSE)
xs = seq(-5,5,0.1)
ys = dt(xs,4)
lines(xs,ys)

library(car)
qqPlot(t, distribution="t", df=3)



#Aufgabe Cafe
x = c(104,103,107,105,102,109,105,104,106)
sum(x)
t.test(x, conf.level = 0.95)

mean(x)-qt(1-0.025,9-1) * sd(x)/sqrt(9) 
mean(x)+qt(1-0.025,9-1) * sd(x)/sqrt(9) 
