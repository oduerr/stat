#Code für Vorlesung Bedingte W'keit
P_TP_CP = 103/108
P_TP_CN = 1/115
P_CP = 80 / 100000 #Aus Inzidenz
(P_CP_TP = P_TP_CP * P_CP / (P_TP_CP * P_CP + P_TP_CN * (1-P_CP)))


library(titanic)
titanic = titanic_train[,c('Survived', 'Pclass')]
table = table(titanic_train$Survived, titanic_train$Pclass) 
table
table / 819
plot(table)


#
surv = sample(c(0,1), size=891, replace = TRUE, prob = c(0.61, 0.39))
pclass = sample(c(1,2,3), size=891, replace = TRUE, prob=c(0.24, 0.21, 0.55))
simu_table = table(surv, pclass)
simu_table / 891
#





#









survived = sample(c(FALSE, TRUE), 891, replace=TRUE, prob = c(549, 342)/891)
pclass = sample(1:3, 891, replace=TRUE, prob = c(216, 184, 491)/891)




#####
#Attick
#P_p_tp = function(sens, spez, pre) sens * pre / (sens * pre + (1 - spez) * (1 - pre)) P_p_tp(sens, spez, pre)
P_CP_TP = function(P_TP_CP, P_TP_CN, P_CP) P_TP_CP * P_CP / (P_TP_CP * P_CP + P_TP_CN * (1-P_CP))
P_CP = seq(0,.9,0.01)
plot(P_CP, P_CP_TP(P_CP, P_TP_CP, P_TP_CN))




