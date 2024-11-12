library(titanic)
titanic = titanic_train[,c('Survived', 'Pclass')]
table = table(titanic_train$Pclass, titanic_train$Survived, ) 
table
table / 891
plot(table, main='Beobachtet')


#### Simulation ####
df = data.frame(
  Survived = sample(c(0,1), size=891, replace = TRUE, prob = c(0.61, 0.39)),
  Pclass = rep(1:3, c(226, 187, 478))
)
tab = table(df$Pclass, df$Survived) 
plot(tab, main='Simuliert mit unabhängiger Überlebensrate')
