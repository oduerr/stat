#  
dbinom(5, size=13, prob=0.92)
dbinom(10, size=13, prob=0.92)

ps = dbinom(0:30, 30, prob=0.92)
plot(0:30, ps,type="h")

# Wie ist der Erwarungswert
sum(ps)
sum(ps * 0:30)

30*0.92
