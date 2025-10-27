# Download OWID CO2 data (includes GDP and CO2 per capita)
#https://github.com/owid/co2-data
url <- "https://raw.githubusercontent.com/owid/co2-data/master/owid-co2-data.csv"
co2_raw <- read.csv(url)



# Select a few countries for simplicity (10 countries as example)
selected <- c("USA", "DEU", "CHN", "IND", "FRA", "BRA", "ZAF","JPN", "EGY", "NOR","CHE", "AUT")
filtered <- co2_raw[co2_raw$iso_code %in% selected, ]
filtered <- filtered[filtered$year == 2022, ] #only 2023 data (2025)
df = data.frame(
  country = filtered$country,
  gdp_per_capita = filtered$gdp/filtered$population,
  co2_per_capita = filtered$co2_per_capita
)
df

# Pearson correlation

# Scatter plot
gdp = df$gdp_per_capita
co2 = df$co2_per_capita
plot(gdp, co2,
     main = "CO2 Emissions vs. GDP per Capita",
     xlab = "GDP per Capita (USD)",
     ylab = "CO2 Emissions per Capita (tons)",
     pch = 19, col = "blue")
text(df$gdp_per_capita, df$co2_per_capita, labels = df$country, pos = 4, cex = 0.7)
text(df$gdp_per_capita[9], df$co2_per_capita[9], "Norway", pos = 2, cex = 0.7)  # left of the dot


cor(gdp, co2)
z1 = (gdp - mean(gdp))/sd(gdp)
z2 = (co2 - mean(co2))/sd(co2)

sum(z1 * z2)/(length(gdp)-1)


