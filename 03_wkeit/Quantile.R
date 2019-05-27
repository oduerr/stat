source("http://www-home.htwg-konstanz.de/~oduerr/data/nym.2002.R")
d = hist(nym.2002$time, freq=F, 50, xlab="Zeit in Minuten")
males <- nym.2002[nym.2002$gender == "Male",]$time
females <- nym.2002[nym.2002$gender == "Female",]$time
d = ecdf(males)

par(mfcol=c(1,2))
plot(ecdf(females), do.points=FALSE, main='')
plot(pnorm(100:600,mean(females), sd(females)), type = 'l', xlab='time [minutes]')
par(mfcol=c(1,1))

plot(NULL, xlim = c(200,500), ylim=c(200,500), xlab='Theoretische Quantile', ylab='Empirische Quantile')
