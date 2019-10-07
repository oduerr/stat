load(url('http://www-home.htwg-konstanz.de/~oduerr/data/benzin.rda'))


qt(0.025, 35)
qt(0.975, 35)

s = sd(benzin)
m = mean(benzin) 
t = (m - 8.2)/(s/6)

2*pt(-t, df=35)

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
pt = 2*(1-pt(t, df=n-1))

# Alternative
t.test(benzin, alternative = 'two.sided',  mu=8.2,conf.level = 0.95)
        