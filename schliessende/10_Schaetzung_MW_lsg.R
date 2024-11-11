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

s = rep(NA, 10000)
n = 10
for (i in 1:length(s)){
  x = runif(n, 1, 6) #Erzeugung der Stichprobe, aus einer Verteilung
  #Frage was ist EW
  s[i] = med(x) 
}
hist(s, 30, xlim = c(0,6), main='mw_2')
mean(s)
mean((s-3.5)^2) #0.2




mean((s - 3.5)^2)#Bei n = 10
#mse 
#     mw 0.20
#     med 0.44
#     mw_2 1.05



