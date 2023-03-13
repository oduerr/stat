#Ein Schätzer (a.k.a. Statistik) ist eine Funktion der Stichprobe
mw = function(x){ 
  return (mean(x))
}

mw_2 = function(x){ 
  return (0.5*(x[1] + x[2]) + 1/length(x))
}

med = function(x){ 
  return (median(x))
}


mw.sampdist = med.sampdist = mw_2.sampdist = rep(NA, 10000)

n = 500
for (i in 1:length(mw.sampdist)){
  x = runif(n, 1, 6) #Erzeugung der Stichprobe, aus einer Verteilung
  #Frage was ist EW
  mw.sampdist[i] = mw(x)
  mw_2.sampdist[i] = mw_2(x)
  med.sampdist[i] = med(x)
}

#Erwartungstreue
hist(mw_2.sampdist)
mean(mw.sampdist) #Ja
mean(mw_2.sampdist)#Nein
mean(med.sampdist)

#MSE
theta = 3.5
mean((mw.sampdist - 3.5)^2)
mean((mw_2.sampdist - 3.5)^2)
mean((med.sampdist - 3.5)^2)
var(med.sampdist)

hist(med.sampdist, 30, xlim = c(0,6), main='mw_2', freq = FALSE)
lines(density(mw.sampdist))

mean(mw.sampdist)
mean(mw_2.sampdist)








