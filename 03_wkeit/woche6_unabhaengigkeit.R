library(titanic)
titanic = titanic_train[,c('Survived', 'Pclass')]
table = table(titanic_train$Survived, titanic_train$Pclass) 
table
table / 891
plot(t(table), main='Beobachtet')


#### Simulation ####
df = data.frame(
  Survived = sample(c(0,1), size=891, replace = TRUE, prob = c(0.61, 0.39)),
  Pclass = rep(1:3, c(226, 187, 478))
)

plot(t(table(df)), main='Simuliert mit unabhängiger Überlebensrate')
