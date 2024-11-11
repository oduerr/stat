# Mein erstes R-Skript
3+3

a=3 #a <- 3 ist auch möglich
a <- 3


b=a*4
b
# Creating vectors
?c
v=c(3,1,3,2,1,5)

# Accessing elements
v[0] #Is not what you expect
v[1] #R is one based
vv = 2:4
v[2:4]
v[-2] #All but second
v[-(c(1,3))]# All but 1 and 3

# Sequences
v2=c(1,7:9)
v2
p2 = exp(2:8)
p2
log(p2)

?seq
seq(from=7, to=9, by=0.5)

# Replicates
rep(2,10)


