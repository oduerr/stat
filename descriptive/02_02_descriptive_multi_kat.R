setwd("~/Documents/workspace/stat/descriptive")
kdata <- read.table('kdata.txt.gz', header=T, sep="\t")
kdata$zivilstand = factor(kdata$zivilstand, c('Single', 'Konkubinat', 'Verheiratet'))

boxplot(einkauf ~ zivilstand, data=kdata, notch=TRUE)
stripchart(einkauf ~ zivilstand, method="jitter", kdata, vertical = TRUE)
stripchart(einkauf ~ zivilstand, method="jitter", kdata[1:100,], vertical = TRUE)




kt = table(kdata$kaufkraft, kdata$zivilstand)
plot(kt)
kt

library(vcd)
mosaicplot(~kaufkraft+zivilstand, data=kdata)
