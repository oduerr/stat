# Pakete
# install.packages(c("quantmod","ggplot2","dplyr","tidyr","scales"))
library(quantmod)
library(ggplot2)
library(dplyr)
library(tidyr)
library(scales)

# 1) Daten laden: NVDA ab 2020-01-01
from <- as.Date("2020-01-01")
to   <- Sys.Date()   # heute
getSymbols("NVDA", src = "yahoo", from = from, to = to, auto.assign = TRUE)

# Wir nutzen den Adjusted Close (splits/dividendenbereinigt)
df <- data.frame(date = index(NVDA),
                 adj  = as.numeric(Ad(NVDA))) %>%
  filter(!is.na(adj))

plot(df$date, df$adj, type="l", main="NVIDIA (Linear)", xlab="Date", ylab="Adjusted Close Price (USD)")
plot(df$date, log10(df$adj), type="l", main="NVIDIA ", xlab="Date", ylab="log(Adjusted Close Price (USD))")
plot(df$date, df$adj, type="l", main="NVIDIA ", xlab="Date", ylab="Adjusted Close Price (USD)", log="y")
