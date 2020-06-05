### Random
n = 3
x = rnorm(n)
y = rnorm(n)
plot(x,y)
cor(rnorm(n), rnorm(n))



n = 3000
for (i in 1:10) {
  print(cor(rnorm(n), rnorm(n))) 
}

