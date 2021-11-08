## Einfache Computer Simulation
x = sample(1:6, 100, replace = TRUE)
x[1:10]
sum(x == 5) / 100
## Wiederholen und es kommt jedes mal was anderes raus
mean(sample(1:6, 1000000, replace = TRUE) == 5)
# Je grösser N desto weniger wankelt es.

#Limit N-> Infty
plot(NULL, xlim=c(0, 100000), ylim=c(0.1,0.2), xlab='N', ylab='Relative Häufigkeit')
abline(h=1/6)
for (i in 1:10){
 N = seq(100, 100000, length.out=100) 
 y = rep(NA,100)
 for (n in 1:100){
   y[n]=mean(sample(1:6, N[n], replace = TRUE) == 5)
 }
 lines(N, y, col=i)
}


## Kompliziertere Computersimulation, mehr als 8 Punkte im Doppelwurf
n = 1000000
x1 = sample(1:6, n, replace = TRUE) #Unabhängige Würfe
x2 = sample(1:6, n, replace = TRUE) #Unabhängige Würfe
x12 = x1 + x2 #Gesamtsumme ist Summe der einzelnen 
x1[1:3]
x2[1:3]
x12[1:3]
sum(x12 > 8) / n #Schätzung nach Mises








