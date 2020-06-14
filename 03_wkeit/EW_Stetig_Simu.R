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

mean(xs)



