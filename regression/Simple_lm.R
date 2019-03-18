load("~/Dropbox/__HTWG/Statistic/Stat_HS2018/handouts/inference/LR/unique2010.rda")
res=lm(Pax ~ ATM, data=unique2010)
summary(res)