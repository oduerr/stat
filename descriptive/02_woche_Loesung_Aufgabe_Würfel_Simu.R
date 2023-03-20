res = sample(1:6, 100, replace = TRUE)
plot(table(res), type='h')

#a)
N = 100
res = sample(1:6, N, replace = TRUE)
plot(table(res)/N, main=N, ylim=c(0,0.3))
abline(h=0.25)

#
















#b) Ändern	Sie	nun	die	Anzahl	N	von	10,	100,	1000,	10000, was	beobachten	Sie?
N = 1000000
res = sample(1:6, N, replace = TRUE)
plot(table(res)/N, type='h', ylim = c(0,0.3))

#c) 1/6
abline(h =1/6)

#d) Bei	100	Würfen,	kommt	für	die	rel.	Häufigkeit	der	sechs	0.25	raus.	
#Denken	Sie	das	dies	ein	gezinkter	Würfel	ist?
N = 100
res = sample(1:6, N, replace = TRUE)
plot(table(res)/N, type='h', ylim = c(0,0.3))
abline(h = 0.25)
