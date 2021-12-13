#Ein Schätzer (a.k.a. Statistik) ist eine Funktion der Stichprobe
mw = function(x){ 
  return (mean(x))
}

mw_2 = function(x){ 
  return (0.5*(x[1] + x[2]))
}

med = function(x){ 
  return (median(x))
}

s = rep(NA, 10000)
wid = 10
for (i in 1:length(s)){
  x = runif(wid, 1, 6) #Erzeugung der Stichprobe, aus einer Verteilung
  #Frage was ist EW
  s[i] = med(x) 
}
hist(s, 30, xlim = c(0,6), main='med')
mean(s)
var(s)
