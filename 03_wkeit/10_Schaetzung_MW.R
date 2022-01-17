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

s = rep(NA, 100000)
n = 5
for (i in 1:length(s)){
  x = runif(n, 1, 6) #Erzeugung der Stichprobe, aus einer Verteilung
  #Frage was ist EW
  s[i] = mw_2(x) 
}
mean(s)
hist(s, 30, xlim = c(0,6), main='mw_2')
sqrt(var(s))
