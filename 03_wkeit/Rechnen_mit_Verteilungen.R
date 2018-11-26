## Rechnen mit Verteilungen in R
#######################


## Verteilungen in R
######################
## Übersicht Verteilungen
?distributions

## Binominal-Verteilung
######################
## Beispiel Schengen-Flüge: X~Bin(n=7,p=0.672)
#P(X=4)
dbinom(x=4, size=7, prob=0.672)
#P(X<=4)
sum(dbinom(x=0:4, size=7, prob=0.672))
#Alternative
pbinom(q=4, size=7, prob=0.672)
#P(X>5)
1-sum(dbinom(x=0:5, size=7, prob=0.672))
#oder
sum(dbinom(x=6:7, size=7, prob=0.672))
#oder
1-pbinom(q=5, size=7, prob=0.672)

## Abbildung
plot(x=c(0:7), y=dbinom(0:7,size=7, prob=0.672), type="h", 
     ylab="P(X=k)",
     xlab="k", main="X~Bin(n=7,p=0.672)")

## Quantilsfunktion --> Umkehrfunktions der kumulativen Verteilungsfunktion

## Fragestellung: Für welches k gilt gerade P(X<=k) > 0.90? (D.h. In 90% der Fälle sind höchsten wie viele Flugbewegungen in oder aus dem SChengenraum?)	

## Strategie 1:	Ausprobieren mit k in dbinom(k, n, p)
cumsum(dbinom(x=0:7, size=7, prob=0.672))

## Strategie 2:	Verwenden der kumulativen Verteilungsfunktion qbinom
qbinom(p=0.90, size=7, prob=0.672)

## Umkehrfunktion der kumulativen Verteilungsfunktion
plot(x=c(0:7), y=pbinom(0:7, size=7, prob=0.672), type="s",
     ylab="F(x)",xlab="x",
     main="kumulative Verteilungsfunktion (X~Bin(n=7,p=0.672))",
     las=1)
abline(h=0.90,lty=2,col="blue",lwd=2)
abline(v=qbinom(0.90, size=7, prob=0.672),lty=2,col="red",lwd=2)


#Poisson-Verteilung
#######################################
?dpois

#Beispiel Segelflugunfälle X ~ Pois(lambda)
#P(X=0)
dpois(0,lambda=4.2)
#P(X<=4)
sum(dpois(0:4,lambda=4.2))
#Alternative
ppois(q=4, lambda=4.2)
#P(X>5)
1-sum(dpois(x=0:5, lambda=4.2))
#oder
1-ppois(q=5, lambda=4.2)

# Abbildungen
plot(x=0:25,y=dpois(0:25,lambda=4.2),type="h",ylab="P(X=k)", 
     xlab="k", main="X~Pois(4.2)")

#Verteilungsfunktion
#P(X <= 3)
ppois(3,lambda=4.2)
plot(x=0:25,y=ppois(0:25,lambda=4.2),type="s",ylab="F(x)", 
     xlab="k", main="X~Pois(4.2)")

#Quantilsfunktion
#Umkehrfunktion der Verteilungsfunktion
#Beispiel: Gesucht kleinster k, so dass F(k)>0.95 
qpois(p=0.95, lambda=4.2)
abline(h=0.95,lty=2,col="blue",lwd=2)
abline(v=qpois(0.95, lambda=4.2),lty=2,col="red",lwd=2)

