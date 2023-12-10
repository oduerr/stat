dunif(0.5, min=2, max=5)
punif(4, min=2, max=5)
runif(10, min=2, max=5)
hist(runif(1e4, min=2, max=5), freq = FALSE)
qunif(0.5, min=2, max=5)
qunif(0.00000001, min=2, max=5)


#### IQ -----
pnorm(85, mean = 100, sd = 15)
1 - pnorm(130, mean = 100, sd = 15)
pnorm(130, mean = 100, sd = 15) - pnorm(70, mean = 100, sd = 15)
qnorm(0.9, mean = 100, sd = 15)

#Siehe Summe_von_ZV.R


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






