library("Rlab") 
p = 0.42
rbern(10, p)
mean(rbern(1000000, p))
p*(1-p)
var(rbern(1000000, p))

