### Quantile
##
xs = seq(-3, 3, length.out = 1000)
plot(xs,dunif(xs,-2,2), type = "l", col = "blue", lwd = 2, main = 'pdf')
plot(xs,punif(xs,-2,2), type = "l", col = "blue", lwd = 2, main = 'cdf')
punif(-2,-2,2)
punif(2,-2,2)
punif(0,-2,2)

qs = seq(0,1, length.out = 1000)
plot(qs,qunif(qs,-2,2), type = "l", col = "blue", lwd = 2, main = 'quantile')O

dunif(0.5, min=2, max=5)
punif(4, min=2, max=5)
runif(10, min=2, max=5)
hist(runif(1e6, min=2, max=5), freq = FALSE)
qunif(0.5, min=2, max=5)
qunif(0.00000001, min=2, max=5)

##### Quantilsfunktion
xs = seq(-3,3, length.out = 1000)
plot(xs, pnorm(xs), type = "l", col = "blue", lwd = 2, main = 'cdf')
xs = seq(0,1, length.out = 1000)
plot(xs, qnorm(xs), type = "l", col = "blue", lwd = 2, main = 'Quantilsfunktion')




#### IQ -----
pnorm(85, mean = 100, sd = 15)
1 - pnorm(130, mean = 100, sd = 15)
pnorm(130, mean = 100, sd = 15) - pnorm(70, mean = 100, sd = 15)
qnorm(0.9, mean = 100, sd = 15)

#Siehe Summe_von_ZV.R

N = 3000
x = rexp(N, rate=0.25)
vals = sort(x)

qs = (1:N)/(N+1)
quantils_exp = qexp(qs, rate=1.0)
quantils_exp = qnorm(qs, mean=0, sd=1)

plot(quantils_exp, vals)


### QQPlot 
N= 30
vals = sort(rnorm(N, 5, 1))
round(vals, 2)
quantiles = (1:N)/N
quantiles

data.frame(round(vals,2), quantiles)

plot(qnorm(quantiles), vals)
abline(a=5,b=1)

#With true quantiles the form does not change
plot(qnorm(quantiles,5,1), vals)
abline(a=0,b=1)


#### QQPlots vs Histograms
library(car)
par(mfrow=c(1,2))
qqPlot(vals)
hist(vals)


Theta = 42
N = 3
R = 10000

M = rep(NA, R)
for (i in 1:R){
  x = rnorm(N, Theta, 1) #Ziehen der Stichprobe
  T = mean(x) #Berechung des Schätzer
  M[i] = (T - Theta)^2 #Quadratische Abweichung vom wahren Werte
}
mean(M)





