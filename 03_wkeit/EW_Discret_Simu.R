# Spielautomatsverteilung
ps = c(0.977, 0.008, 0.008, 0.006, 0.001)
xs = c(-1,4,9,14,19)
sm = sample(xs, 1000000, replace = TRUE, prob = ps)
mean(sm)
var(sm)

p = rep(1/6,6)
g = c(1,2,3,4,5,6)
sum(p * g)

g = c(0,2,0,4,0,6)
sum(p * g)

g = g**2
sum(p * g)


# Würfel
set.seed(42)
N = 500000
x = sample(1:6, N, replace = TRUE)
x
#Abschaetzung von EW
mean(x) #3.5052
#Erwartungswerte von X^2
mean(x^2) #15.21858


#Augenzahl in Euro, falls gerade Zahl
#x 6 6 2 5 4 4 5 1 4 5
xg = x %% 2 == 0 #gerade TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE
#xg * x #6 6 2 0 4 4 0 0 4 0
mean(xg * x) #2.00234

##Augenzahl in Euro zum Quadrat, falls gerade Zahl
mean(xg * x^2)#9.38124
56/6 #9.33333

for (i in 1:1e8){ #Im wievielten versuch kommt die 6?
  if (sample(1:6,1) == 6){
    print(i)
    break
  }
}  

# Spiel
gewinn = rep(NA, 10000)
for (run in 1:length(gewinn)){
  for (i in 1:10000){ #Im wievielten versuch kommt die 6?
    if (sample(1:6,1) == 6){
      gewinn[run] = i   
      break
    }
  }  
}
sum(gewinn) / 10000

hist(gewinn,100)
plot(table(gewinn))
mean(gewinn)
#Ist Geometrische Verteilung, dort ist mean = 1/p

k = 1:10
plot(k, dbinom(k, size=10, prob = 0.4), type = 'h')





