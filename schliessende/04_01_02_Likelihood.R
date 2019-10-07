## Einführung Likelihood

x = 0:100   # Anzahl der roten bei 100 Würfen
p = 2.0/6.0 # Einzel W'keit bei 2.0/6.0
p100 = dbinom(x, size=100, )
plot(x,p100, type='h')
2/6*100
which.max(p) #34 entspricht dem X-Wert Stelle 

### Umdrehen der Argumentation
x = 34     # Anzahl der roten bei 100 Würfen, jetzt fest
p=(0:6)/6  # Einzel W'keit jetzt variable 0,1/6,2/6,...,1.0 #<--- That's the whole point
like = dbinom(x, size=100, p)
plot(p, like, type='h')
lines(p, like, type='p')

# Kleine NB Likelihood ist keine W'keit im engeren Sinne
sum(like)

poisson.test(27)
