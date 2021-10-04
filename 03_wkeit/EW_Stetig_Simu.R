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



