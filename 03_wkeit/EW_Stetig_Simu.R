dat = runif(100000, 0,1) #1000 Zahlen zwischen 0 und 6
hist(dat, freq = FALSE, breaks = 1)
hist(dat, freq = FALSE, breaks = 2)
hist(dat, freq = FALSE, breaks = 100)

N = 10000
x = runif(N, 0, 1)
g = sin(exp(x) + sin(x))
plot(cumsum(g) / 1:N, type='l')
lines(cumsum(g) / 1:N, col='red')
# Simulation von Daten aus einer Dreiecksverteilung
# Dies ist nicht Teil der Vorlesung
rdreieck = function(n){
  return (sqrt(runif(n)))
}

# Glückspiel
# X ~ Dreiecksverteilung
xs = rdreieck(10000)
hist(xs, freq = FALSE)
curve(2*x,0,1, add=TRUE, col='red')

mean(xs) #0.67
var(xs) #0.05

xs = runif(10000,0,1)
mean(sin(exp(xs)+sin(xs))) #0.6218743

# Erwartungswert fuer N->Infty
N = 100000
xs = runif(N,0,1)
cs = cumsum(sin(exp(xs)+sin(xs)))/1:N
plot(cs, type = 'l')
xs = runif(N,0,1)
cs = cumsum(sin(exp(xs)+sin(xs)))/1:N
lines(cs, type = 'l', col='red')



