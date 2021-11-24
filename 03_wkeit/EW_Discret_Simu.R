# Spielautomatsverteilung
ps = c(0.977, 0.008, 0.008, 0.006, 0.001)
xs = c(-1,4,9,14,19)
sm = sample(xs, 1000000, replace = TRUE, prob = ps)
mean(sm)
var(sm)

# Würfel
set.seed(42)
N = 10000
x = sample(1:6, N, replace = TRUE)

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

# Spiel
gewinn = rep(NA, 1000)
for (run in 1:length(gewinn)){
  for (i in 1:10000){
    if (sample(1:6,1) == 6){
      gewinn[run] = i   
      break
    }
  }  
}
hist(gewinn,30)
mean(gewinn)

#Ist Geometrische Verteilung, dort ist mean = 1/p

k = 1:10
plot(k, dbinom(k, size=10, prob = 0.4), type = 'h')





