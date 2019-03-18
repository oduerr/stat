x = c(104, 103,107,105,102,109,105,104,106)
t.test(x, conf.level = 0.95)

qt(0.975, df=100)
qnorm(1/6)

qt(0.95, df=100)
qnorm(0.95)

# Boxplot
boxplot(rnorm(1000, 0.1), notch = TRUE)
