x = rep(NA, 10000)
wid = 2
for (i in 1:length(x)){
  x[i] = sum(sample(1:6, wid, replace = TRUE))
}
mean(x)
var(x)
plot(table(x), type='h')



x = rep(NA, 10000)
wid = 1
for (i in 1:length(x)){
  x[i] = sum(runif(wid, 0, 6))
}
mean(x)
var(x)
hist(x, freq = FALSE, 30)