n = 50
frauen = data.frame(
  gehalt = rnorm(n, 40, 10),
  schuhgroesse = rnorm(n, 40, 3),
  geschlecht = 1
)

maenner = data.frame(
  gehalt = rnorm(n, 50, 10),
  schuhgroesse = rnorm(n, 45, 3),
  geschlecht = 2
)

all = rbind(frauen, maenner)
plot(gehalt ~ schuhgroesse, all, col=all$geschlecht)
cor(all$gehalt, all$schuhgroesse)
