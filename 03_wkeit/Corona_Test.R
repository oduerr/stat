P_TP_CP = 0.95
P_TP_CN = 1/115
P_CP = 0.03 #Aus Inzidenz

(P_CP_TP = P_TP_CP * P_CP / (P_TP_CP * P_CP + P_TP_CN * (1-P_CP)))

#P_p_tp = function(sens, spez, pre) sens * pre / (sens * pre + (1 - spez) * (1 - pre)) P_p_tp(sens, spez, pre)
P_CP_TP = function(P_TP_CP, P_TP_CN, P_CP) P_TP_CP * P_CP / (P_TP_CP * P_CP + P_TP_CN * (1-P_CP))
P_CP = seq(0,.9,0.01)
plot(P_CP, P_CP_TP(P_CP, P_TP_CP, P_TP_CN))



library(titanic)
titanic = titanic_train[,c('Survived', 'Pclass')]
table(titanic_train$Survived, titanic_train$Pclass) 

survived = sample(c(FALSE, TRUE), 891, replace=TRUE, prob = c(549, 342)/891)
pclass = sample(1:3, 891, replace=TRUE, prob = c(216, 184, 491)/891)
plot(table(pclass, survived))






