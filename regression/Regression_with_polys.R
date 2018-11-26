f = function(x) {
  x+(x+2)^2-(x-1)^4
}
xs = seq(-2,4,0.1)
plot(xs, f(xs), type = 'l', ylim = c(-40,40))

xr = runif(30, -1.5,3.5)
yr = f(xr) + 5*rnorm(length(xr))
points(xr, yr)

data = data.frame(x=xr, y=yr)

# Linear fit
m1 = lm(y ~ x , data = data)
lines(xs, predict(m1,data.frame(x=xs)), col='black')

# Linear fit additional x^2
#m1 = lm(y ~ x + I(x^2), data = data)
#lines(xs, predict(m1,data.frame(x=xs)), col='blue')

# Linear fit additional x^2
m1 = lm(y ~ x + I(x^2 + x^3 + x^4 + x^5 + x^6), data = data)
lines(xs, predict(m1,data.frame(x=xs)), col='red')





