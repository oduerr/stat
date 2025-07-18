l = 2 # Anzahl der Roten
p = l/6 #2 rote seiten 
dbinom(0, 100, p)
dbinom(34, 100, p)
dbinom(99, 100, p)
dbinom(100, 100, p)
plot(0:100, dbinom(0:100, 100, p), type='h')
#




wuerfel = function(l, p){
  return(dbinom(l, 100, p))
}
wuerfel(l=0, p=2/6)
# Wie Wahrscheinlich ist es dass man 34 rote Seiten sieht bei 100 Würfen
# wenn die Anzahl der roten Seiten l varieneren.
wuerfel(l=34, p=0/6)











#
p = 2/6
wuerfel(0, p)
wuerfel(34, p)
wuerfel(99, p)
wuerfel(100, p)
#
wuerfel(l=34, p=0:6/6) #Wkeit 34 mal rot zu sehen bei l=0,1,2,...,6
plot(0:6, wuerfel(l=34, p=0:6/6), type='h')
points(0:6, wuerfel(l=34, p=0:6/6))



#
likelihood = function(data, parameter_l){
  prob_of_data_given_paramters = dexp(data, rate=parameter_l)
  prob_of_data_given_paramters = prod(dexp(data, rate=parameter_l))
  return(prob_of_data_given_paramters)
}
likelihood = Vectorize(likelihood, 'parameter_l') 

likelihood(c(3,2), 0:2)
parameter_l = seq(0,10,0.01)
likelihood(c(3,2), parameter_l)
plot(parameter_l, likelihood(data = 3, parameter_l = parameter_l), xlim = c(0,1))
#
l = likelihood(data = 3, parameter_l = parameter_l)
which(l == max(l))
parameter_l[34]
#

plot(parameter_l, log(likelihood(data = 3, parameter_l = parameter_l)), xlim = c(0,1),ylim = c(-5,0))
prod(runif(1000))
sum(log(runif(1000)))
















ls = seq(0,10,0.01)
which.max(likelihood(data = 3, parameter_l = ls))
ls[34]


max = -Inf
for (l in seq(0,10,0.01)){
  if (likelihood(data = 3, parameter_l = l) > max){
    max = likelihood(data = 3, parameter_l = l)
    print(l)
  }
}



set.seed(123)
data <- rpois(1000, lambda = 150)
pois_likelihood <- function(lambda, data) {
  -sum(dpois(data, lambda, log = TRUE))
}
pois_likelihood(109, data)
optim(fn = pois_likelihood, par = 109, data = data)
mean(data)
#
pars = seq(0.0, 5, length=3000)
likes = likelihood(3, pars)
plot(pars, likes)
pars[which.max(likes)]



p = rep(0.1, 320)
prod(p)









#
pars = seq(0.01, 5, length=30000)
likes = likelihood(data=c(3,4), pars)
plot(pars, likes)
pars[which.max(likes)]

1/((3+4)/2)
#
prod(runif(1000,0,1))
sum(log(runif(1000,0,1)))
#


if (FALSE){
  install.packages("madness")
  library(madness)
  
}









## Einführung Likelihood

x = 0:100   # Anzahl der roten bei 100 Würfen
p = 2.0/6.0 # Einzel W'keit bei 2.0/6.0
p100 = dbinom(x, size=100, p)
which.max(p100)
plot(x,p100, type='h')
2/6*100


### Umdrehen der Argumentation
x = 34     # Anzahl der roten bei 100 Würfen, jetzt fest
p=(0:6)/6  # Einzel W'keit jetzt variable 0,1/6,2/6,...,1.0 #<--- That's the whole point
like = dbinom(x, size=100, p)
plot(0:6, like, type='h')
lines(0:6, like, type='p')
which.max(like) #3 entspricht dem X-Wert Stelle 
which.max(log(like)) #3 entspricht dem X-Wert Stelle 

# Keine NB Likelihood ist keine W'keit im engeren Sinne
sum(like)

#Returns the probability of data given parameters
likelihood = function(data, parameters){
  #...
  return(prob_of_data_given_paramters)
}

#Example
likelihood = function(data_n, data_k, parameter_p){
  prob_of_data_given_paramters = dbinom(x = data_k, size=data_n, p=parameter_p)
  return(prob_of_data_given_paramters)
}
parameter_p = 0:6/6
likelihood(data_n = 100, data_k=34,parameter_p)

#The maximum likelihood principle
which.max(likelihood(data_n = 100, data_k=34,parameter_p))
parameter_p[3]

#Beispiel Optimierung
likelihood = function(data, parameter_l){
  prob_of_data_given_paramters = prod(dexp(data, rate=parameter_l))
  return(prob_of_data_given_paramters)
}
likelihood = Vectorize(likelihood, 'parameter_l') 
data = c(3)
parameter_l = 3
likelihood(data, parameter_l)
ls = seq(0.1,4, length=300)
plot(ls, likelihood(data, ls))
abline(v=1/3)

#Beispiel mehr als 1
#Es ist Product gegeben
data = c(3,2,1)
likelihood(data, parameter_l)
ls = seq(0.1,4, length=300)
plot(ls, likelihood(data, ls))
which.max(likelihood(data, ls))
ls[which.max(likelihood(data, ls))]

nll = function(data, parameter_l){
  prob_of_data_given_paramters = -sum(log(dexp(data, rate=parameter_l)))
  return(prob_of_data_given_paramters)
}
nll = Vectorize(nll, 'parameter_l') 
which.min(nll(data, ls))
ls[which.min(nll(data, ls))]





