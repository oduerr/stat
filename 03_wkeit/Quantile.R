source("http://www-home.htwg-konstanz.de/~oduerr/data/nym.2002.R")
d = hist(nym.2002$time, freq=F, 50, xlab="Zeit in Minuten")
males <- nym.2002[nym.2002$gender == "Male",]$time
females <- nym.2002[nym.2002$gender == "Female",]$time
hist(females)
d = ecdf(males)
plot(d)

par(mfcol=c(1,2))
plot(ecdf(females), do.points=FALSE, main='')
plot(100:600, pnorm(100:600,mean(females), sd(females)), type = 'l', xlab='time [minutes]')
par(mfcol=c(1,1))

plot(NULL, xlim = c(200,500), ylim=c(200,500), xlab='Theoretische Quantile', ylab='Empirische Quantile')


qs = seq(0.1,0.99, 0.01) #c(0.1, 0.25, 0.5, 0.75, 0.9)
q_exp = quantile(females, qs)
q_theo = qnorm(p=qs,mean(females), sd(females))
plot(0:400,pnorm(0:400,mean(females), sd(females)))

plot(q_theo, q_exp)

library(car)
qqPlot(females)
d = rnorm(1000, mean=42, sd=10)
d = rexp(10000, rate=34)
qqPlot(d, distribution = 'exp')
