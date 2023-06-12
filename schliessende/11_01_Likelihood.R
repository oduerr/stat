l = 2
p = l/6 #2 rote seiten 
dbinom(0, 100, p)
dbinom(34, 100, p)
dbinom(99, 100, p)
dbinom(100, 100, p)
plot(0:100, dbinom(0:100, 100, p))
#


dbinom(34, 100, p=0/6) #Wkeit 34 mal rot zu sehen bei l=0
dbinom(34, 100, p=1/6) #Wkeit 34 mal rot zu sehen bei l=1
dbinom(34, 100, p=2/6) #Wkeit 34 mal rot zu sehen bei l=2
dbinom(34, 100, p=3/6) #Wkeit 34 mal rot zu sehen bei l=3
plot(0:6, dbinom(34, 100, (0:6)/6))













#
p = 1/6
dbinom(34, 100, 0:6/6)

likelihood = function(data, parameter_l){
  #prob_of_data_given_paramters = dexp(data, rate=parameter_l)
  prob_of_data_given_paramters = prod(dexp(data, rate=parameter_l))
  return(prob_of_data_given_paramters)
}
likelihood = Vectorize(likelihood, 'parameter_l') 
#
pars = seq(0.0, 5, length=3000)
likes = likelihood(3, pars)
plot(pars, likes)
pars[which.max(likes)]











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





