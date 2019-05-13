#### Binomial Verteilung

# Bsp Toto
p = 0.333 
n = 13
x = 0:13 
dbinom(x,n,p)
sum(dbinom(0:5,n,p))
pbinom(5,n,p)
rbinom(100,13,0.33)

plot(x,dbinom(x,n,p), type='h')
plot(x,pbinom(x,n,p), type='s')


# Party mit 10 Leuten
n =   10 
p =  0.8 #80% kommen nicht
x = 0:10
plot(x,dbinom(x,n,p), type='h')

s = 0
for (i in 0:11){
  s = s + dbinom(i,n,p) * i #\sum p_i * x_i  
}
s

#### Poison Verteilung
plot(x=0:20, y=dpois(0:20, lambda=0.5), type="h")
# Change lambda


#### Poison Verteilung GW Binomial
# 6-er Pasch bei 100 Würfen
p = 1/36 
n = 199
x = 0:100 
plot(x,dbinom(x,n,p), type='h')

#EW = n*p = 100/36  = 2.77...
# Es ist Bionomial aber troztdem Poisson
plot(x=0:100, y=dpois(0:100, lambda=100/36), type="h")
