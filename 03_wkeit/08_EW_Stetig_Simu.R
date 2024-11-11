# Diskrete vs Stetige
runs = 100000
res = sample(1:6, runs, replace = TRUE)
table(res)
plot(table(res)/runs)
table(res)/runs

#Stetige
dat = runif(100000, 0,1) #1000 Zahlen zwischen 0 und 6
hist(dat, freq = FALSE, breaks = 1)
hist(dat, freq = FALSE, breaks = 2)
hist(dat, freq = FALSE, breaks = 10)
hist(dat, freq = FALSE, breaks = 100)



# Simulation von Daten aus einer Dreiecksverteilung
# Dies ist nicht Teil der Vorlesung
rdreieck = function(n){
  return (sqrt(runif(n)))
}

# Glückspiel
# X ~ Dreiecksverteilung
xs = rdreieck(100000)
hist(xs, freq = FALSE)
curve(2*x,0,1, add=TRUE, col='red')

mean(xs) #0.67
mean(xs^2) #0.4996467
var(xs) #0.05



# Aufgabe Simulation
N = 10000
xs = runif(N,0,1)
mean(sin(exp(xs)+sin(xs))) #0.6218743

# Erwartungswert fuer N->Infty
x = sin(exp(xs)+sin(xs))
cs = cumsum(x) / (1:N)
plot(cs, type = 'l')

# Zweite Simulation
xs = runif(N,0,1)
cs = cumsum(sin(exp(xs)+sin(xs)))/1:N
lines(cs, type = 'l', col='red')

# Numerische Intergration (Probe)
integrate(function(x) sin(exp(x)+sin(x)), 0, 1)


