# Würfeln
sum(1:6)/6 #3.5 EW
set.seed(42)
N=1000000
X = sample(1:6,N, replace = TRUE)
mean(X) #3.4998 
avg = cumsum(X)/1:N #Gleitender MW
plot(1:N, avg, type = 'l')
abline(h=3.5, col='red')



# Zahlen zwischen 1 und 6
N=10000
X = runif(N,1,6)
avg = cumsum(X)/1:N
plot(1:N, avg, type = 'l')
abline(h=3.5)

x = runif(1000000, min = 0, max =1)
# 
mean(x)      #Was kommt raus?
hist(x,30,freq = FALSE)   
plot(ecdf(x))

















