sens = 0.80  #Sensitivität P(T+|+) Test Positiv T+ wenn Positiv 
spez = 0.98 #Spezifität   P(T-|-) Test Negativ T- wenn Negativ -

pre = 5 / 10000 #Prävalenz P(+)

tp = sens * pre / (sens * pre + (1 - spez) * (1 - pre))
tp
