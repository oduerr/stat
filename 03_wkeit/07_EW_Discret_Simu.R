### Code für die Vorlesung in der 7. Woche
################################
# Spielautomatsverteilung ######
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

################################
# Simulationen            ######

### Würfel###
set.seed(42)
N = 10e6
x = sample(1:6, N, replace = TRUE)
#Abschaetzung von EW
mean(x) #3.5052
#Erwartungswerte von X^2
mean(x^2) #15.21858

# Spielautomatsverteilung ######
#Augenzahl in Euro, falls gerade Zahl
#x 6 6 2 5 4 4 5 1 4 5
xg = x %% 2 == 0 #gerade TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE
#xg * x #6 6 2 0 4 4 0 0 4 0
mean(xg * x) #2.00234

##Augenzahl in Euro zum Quadrat, falls gerade Zahl
mean(xg * x^2)#9.38124
56/6 #9.33333

# Würfel mit Aufhören ######
N = 1e4
gewinn = rep(0, N)
for (n in 1:N){
  for (i in 1:1e8){ #Im wievielten versuch kommt die 6?
    if (sample(1:6,1) == 6){
      #print(i)
      gewinn[n] = i
      break
    }
  }  
}
mean(gewinn)
plot(table(gewinn)/N, xlim = c(0,40))
#hist(gewinn, breaks = 50)

hist(gewinn,100)
plot(table(gewinn))
mean(gewinn)
#Ist Geometrische Verteilung, dort ist mean = 1/p

pbinom(0:10, 10, 0.8)
d = round(pbinom(0:10, 10, 0.8),3)
names(d) = 0:10
d

# Bionomial Party ######
k = 0:10
df = data.frame(
  k = dbinom(k, 10, 0.8), #80% kommen
  P = pbinom(k, 10, 0.8)
)
df = t(df)
colnames(df) = k
round(df, 3)  





