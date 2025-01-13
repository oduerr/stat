alpha = 0.0001
1-alpha 
qnorm(1-alpha/2)




n = 3
X = matrix(rnorm(n*1000,1,2), ncol = n)
hist(rowMeans(X),100)
library(car)
car::qqPlot(rowMeans(X))
mean(rowMeans(X)) #~2
sd(rowMeans(X))
sqrt(2*2/n)

###### t-distribution with random data #######
# Random Data
X = matrix(rnorm(4*1000), nrow=1000)
xn = rowMeans(X)
sx = apply(X, 1, sd)

t = xn/(sx/sqrt(4)) # Calculation of t-statistic
hist(t,100, freq=FALSE)
xs = seq(-5,5,0.1)
ys = dt(xs,4)
lines(xs,ys)

library(car)
qqPlot(t, distribution="t", df=3)


####### Aufgabe Cafe #####
x = c(104,103,107,105,102,109,105,104,106)
mean(x)-qt(1-0.025,9-1) * sd(x)/sqrt(9) #103.3694
mean(x)+qt(1-0.025,9-1) * sd(x)/sqrt(9)  #106.6306

t.test(x, conf.level = 0.95)
#t.test(x, alternative="two.sided", conf.level=0.95) default values



####### Aufgabe Breite der KI #####
N = 1000
n1s = seq(0,N,100)
unten = oben = rep(NA, length(n1s))
for (i in 1:length(n1s)){
  n1 = n1s[i]
  res = binom.test(n1, N, conf.level = 0.95)
  unten[i] = res$conf.int[1]
  oben[i] = res$conf.int[2]
}
plot(n1s/N, oben, type = 'l')
lines(n1s/N, unten, type = 'l')

N = 1000
n1s = seq(0, N, 100)
unten = oben = rep(NA, length(n1s))
for (i in 1:length(n1s)){
  n1 = n1s[i]
  res = binom.test(n1, N, conf.level = 0.95)
  unten[i] = res$conf.int[1]
  oben[i] = res$conf.int[2]
}
plot(n1s/N, oben, type = 'n', ylim = c(min(unten), max(oben)), ylab = "Confidence Interval")
for (i in 1:length(n1s)){
  lines(c(n1s[i]/N, n1s[i]/N), c(unten[i], oben[i]), type = 'l', col = "blue")
}





#Aufgabe
inside = 0
reps = 1000
for (r in 1:reps){
  response = sample(c(0,1), N, replace = TRUE, prob = c(0.5,0.5))
  res = binom.test(sum(response), N, conf.level = 0.95)
  if (res$conf.int[1] < 0.5 && 0.5 < res$conf.int[2]){
    inside = inside + 1
  }
}
inside/reps
