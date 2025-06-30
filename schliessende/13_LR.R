b0 = -1197682
b1 = 138.8
x = c(20100, 24000, 5000)
b0 + b1 * x


load("/Users/oli/Library/CloudStorage/Dropbox/__HTWG/Statistic/__current/handouts/inference/LR/unique2010.rda")
res = lm(Pax ~ ATM, data=unique2010)
predict(res,data.frame(ATM=c(20100, 24000, 5000)))
plot(Pax ~ ATM, data=unique2010)
abline(res)

summary(res)

xi = seq(1,10,0.5)
n = length(xi)
beta0 = 2.0
beta1 = 1.0
yi = rnorm(n, mean=beta0 + beta1*xi, sd = 0.5)
plot(xi,yi)
res = lm(yi ~ xi)  


##### Daten für LR aus Normaverteilung

xi = seq(1,10,0.05) #X-Werte
n = length(xi)
yi = rnorm(n,mean=1*xi+2, sd = 0.5) #DGP
#Simulation mit vielen Wdh. (für Aufgabe)
inters = rep(NA, 1000)
slopes = rep(NA, 1000)
for (i in 1:length(inters)){  
  yi = rnorm(n,mean=1*xi+2, sd = 0.5) #DGP
  res = lm(yi ~ xi)  
  inters[i] = res$coefficients[1]  
  slopes[i] = res$coefficients[2]
}


confint(res, conf.level=0.6)[1,1]



hist(inters,50)
mean(inters) 
sd(inters)

hist(slopes,50)
mean(slopes) 
sd(slopes)  










#
xi = seq(1,10,0.5)
n = length(xi)
inters = rep(NA, 1000)
slopes = rep(NA, 1000)
in_ci = 0
for (i in 1:length(inters)){  
  yi = rnorm(n,mean=1*xi+2, sd = 0.5) #DGP
  #plot(xi, yi)
  res = lm(yi ~ xi)  
  #abline(res)
  #res
  inters[i] = res$coefficients[1]  
  slopes[i] = res$coefficients[2]
  l = confint(res, level=0.6)[2,1]
  u = confint(res, level=0.6)[2,2]
  if (l < 1 && u > 1) {
    in_ci = in_ci + 1
  }
}
in_ci

mean(slopes)  
#Change N, sd in DGP
hist(inters,20)
mean(inters) 
var(inters) 

hist(slopes,20)
mean(slopes)
sd(slopes)

in_ci / 1000 



X = data.frame(matrix(rnorm(12), ncol=3), Y = rnorm(4))
lm(Y ~ X1+X2+X3, data=X)










