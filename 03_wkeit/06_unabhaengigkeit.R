#Code für Vorlesung Bedingte W'keit
P_TP_CP = 103/108
P_TP_CN = 1/115
P_CP = 80 / 100000 #Aus Inzidenz
(P_CP_TP = P_TP_CP * P_CP / (P_TP_CP * P_CP + P_TP_CN * (1-P_CP)))


library(titanic)
titanic = titanic_train[,c('Survived', 'Pclass')]
table = table(titanic_train$Survived, titanic_train$Pclass) 
table
table / 891
plot(table, main='Beobachtet')


#
pclass = sample(c(1,2,3), size=891, replace = TRUE, prob=c(0.24, 0.21, 0.55))
surv = sample(c(0,1), size=891, replace = TRUE, prob = c(0.61, 0.39))
simu_table = table(surv, pclass)
simu_table / 891
plot(simu_table, main='simuliert_table')

#





#









survived = sample(c(FALSE, TRUE), 891, replace=TRUE, prob = c(549, 342)/891)
pclass = sample(1:3, 891, replace=TRUE, prob = c(216, 184, 491)/891)




#####
# ChatGPT Aufgabe Titanik
# Laden notwendiger Bibliotheken
library(ggplot2)

# 1. Simulation der Klassenzugehörigkeit
set.seed(123) # Für reproduzierbare Ergebnisse
klassen <- sample(x = 1:3, size = 891, replace = TRUE, prob = c(0.24, 0.21, 0.55))

# 2. Simulation des Überlebens
ueberleben <- sample(x = c("Überlebt", "Nicht Überlebt"), size = 891, replace = TRUE, prob = c(0.39, 0.61))

# Daten zusammenfassen
titanic_data <- data.frame(Klasse = klassen, Überleben = ueberleben)

# 3. Berechnung für die erste Klasse
erste_klasse_ueberlebt <- sum(titanic_data$Klasse == 1 & titanic_data$Überleben == "Überlebt")
gesamt_erste_klasse <- sum(titanic_data$Klasse == 1)
wahrscheinlichkeit_erste_klasse <- erste_klasse_ueberlebt / gesamt_erste_klasse

# Ausgabe der Ergebnisse
cat("Anzahl der Überlebenden in der ersten Klasse:", erste_klasse_ueberlebt, "\n")
cat("Wahrscheinlichkeit des Überlebens in der ersten Klasse:", wahrscheinlichkeit_erste_klasse, "\n")

# 4. Mosaikplot
mosaicplot(~ Klasse + Überleben, data = titanic_data, main = "Mosaikplot der Titanic-Daten")





