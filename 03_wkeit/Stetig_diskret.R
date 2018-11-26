res = sample(1:6, 1000, replace=TRUE)
plot(table(res)/length(res), type='h')

res = runif(100000, 1,6)
hist(res,30)
hist(res,30, freq = FALSE)



pexp(0:12, rate=5/3)
