xi = seq(1,10,0.5)
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

sd(inters) 
mean(slopes)
sd(slopes)
