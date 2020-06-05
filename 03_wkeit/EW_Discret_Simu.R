set.seed(42)
N = 100000
x = sample(1:6, N, replace = TRUE)

#Abschaetzung von EW
mean(x)

#Erwartungswerte von X^2
mean(x^2)

#Augenzahl in Euro, falls gerade Zahl
#x 6 6 2 5 4 4 5 1 4 5
xg = x %% 2 == 0 #gerade TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE
#xg * x #6 6 2 0 4 4 0 0 4 0
mean(xg * x)

##Augenzahl in Euro zum Quadrat, falls gerade Zahl
mean(xg * x^2)