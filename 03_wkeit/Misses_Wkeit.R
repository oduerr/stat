## Einfache Computer Simulation
x = sample(1:6, 100, replace = TRUE)
x[1:10]
sum(x == 5) / 100

## Kompliziertere Computersimulation, mehr als 8 Punkte im Doppelwurf
n = 1000000
x1 = sample(1:6, n, replace = TRUE) #Unabhängige Würfe
x2 = sample(1:6, n, replace = TRUE) #Unabhängige Würfe
x12 = x1 + x2 #Gesamtsumme ist Summe der einzelnen 
x1[1:3]
x2[1:3]
x12[1:3]
sum(x12 > 8) / n #Schätzung nach Mises

