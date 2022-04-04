res = lm(Pax ~ ATM, data=unique2010)
predict(res,data.frame(ATM=c(20100, 24000, 500)))



xi = seq(1,10,0.5)
n = length(xi)
beta0 = 2.0
beta1 = 1.0
yi = rnorm(n, mean=beta0 + beta1*xi, sd = 0.5)
plot(xi,yi)
res = lm(yi ~ xi)  






xi = seq(1,10,0.05)
n = length(xi)
inters = rep(NA, 1000)
slopes = rep(NA, 1000)
for (i in 1:length(inters)){  
  yi = rnorm(n,mean=1*xi+2, sd = 0.5) #DGP
  res = lm(yi ~ xi)  
  inters[i] = res$coefficients[1]  
  slopes[i] = res$coefficients[2]
}
#Change N, sd in DGP
hist(inters,20)
mean(inters) 

var(inters) 
mean(slopes)
sd(slopes)
