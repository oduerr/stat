x = rep(NA, 10000)
wid = 3
for (i in 1:length(x)){
  x[i] = sum(sample(1:6, wid, replace = TRUE))
}
plot(table(x), type='h')



x = rep(NA, 10000)
wid = 3
for (i in 1:length(x)){
  x[i] = sum(runif(wid, 0, 6))
}
hist(x)
