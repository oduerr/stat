load(url('http://www-home.htwg-konstanz.de/~oduerr/data/benzin.rda'))

#1) alpha 0.05
#2) Ho: mu = 8.2
#3) Ha: mu <> 8.2
#4) 
x_quer = mean(benzin)
s = sd(benzin)
t = (x_quer - 8.2) / (s/sqrt(36))
#5) Verteilung 
dt(0.3, df=35)

x = seq(-3,3,0.1)
plot(x, dt(x, df=4), type='l')
lines(x, dnorm(x), col='red')

2*pt(-8.16, df=35)

(1.0-pt(t, df=35))*2
(1.0-pnorm(8.16))*2

# qt(0.025, 35)
# qt(0.975, 35)
# 
# s = sd(benzin)
# m = mean(benzin) 
# t = (m - 8.2)/(s/6)
# 
# 2*pt(-t, df=35)
# 
t.test(benzin, alternative = 'two.sided', mu = 8.2)




#Wahl signifikanz
#alpha = 0.05

#Ho mu  = 8.2
#Ha mu != 8.2 "beidseitig"

# t t-Verteilt
m = mean(benzin)
s = sd(benzin)
n = length(benzin)




t = sqrt(n)* (m - 8.2)/s
t
#Verwerfungsbereich
qt(0.025, 35) #0 bis 
qt(0.975, 35) #bis undendlich

# p-Wert
pt = 2*(1-pt(t, df=n-1))
pt


# Alternative
t.test(benzin, alternative = 'two.sided',  mu=8.2,conf.level = 0.95)
        