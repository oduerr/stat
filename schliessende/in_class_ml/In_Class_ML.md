Maximum Likelihood (InClass)
================

Diese Übung beinhaltet die Verwendung des Maximum-Likelihood-Schätzers
(MLE), um die Parameter für eine Poisson-Verteilung zu schätzen. In
dieser Übung spielen Sie die Rolle eines Stadtplaners, der die Anzahl
der Autos, die täglich eine bestimmte Kreuzung passieren, modellieren
muss. Sie haben Daten über einen Zeitraum von 1000 Tagen gesammelt und
werden die Maximum-Likelihood-Schätzung verwenden, um den besten
Schätzwert für den Durchschnittsverkehr an dieser Kreuzung zu ermitteln.

1.  Generieren Sie zufällige Daten mit einer Poisson-Verteilung. In R
    können Sie die Funktion `rpois` verwenden, um Poisson-verteilte
    Daten zu generieren. Angenommen, wir generieren 1000 Beobachtungen
    aus einer Poisson-Verteilung mit einem Lambda (Rate-Parameter) von
    150.

``` r
set.seed(123)
data <- rpois(1000, lambda = 150)
```

2.  Schreiben Sie die Likelihood-Funktion für eine Poisson-Verteilung.
    Die Likelihood-Funktion für eine Poisson-Verteilung ist:

$$
L(λ|x) = (e^{−λ} \cdot λ^x) / x!
$$

In R können wir diese Funktion definieren als:

``` r
pois_likelihood <- function(lambda, data) {
  -sum(dpois(data, lambda, log = TRUE))
}
```

Beachten Sie, dass wir die negative Log-Likelihood verwenden, da
Optimierer in R in der Regel Funktionen minimieren (und wir die
Likelihood maximieren wollen).

3.  Verwenden Sie die Funktion `optim` in R, um den Lambda-Parameter für
    Ihre Daten zu schätzen:

``` r
result <- optim(par = 1, fn = pois_likelihood, data = data, method = "BFGS")
```

In diesem Code ist `par = 1` die erste Vermutung für Lambda (Startwert),
`fn = pois_likelihood` ist die zu minimierende Funktion (die negative
Log-Likelihood), und `method = "BFGS"` gibt den zu verwendenden
Optimierungsalgorithmus an.

4.  Drucken Sie das geschätzte Lambda:

``` r
lambda_hat <- result$par
print(lambda_hat)
```

5.  Vergleichen Sie das geschätzte Lambda mit dem wahren Lambda, das zur
    Generierung der Daten verwendet wurde.

Diese Übung hilft zu verstehen, wie man den Maximum-Likelihood-Schätzer
verwendet, um die Parameter einer Verteilung mit R zu schätzen. Sie
sammeln auch Erfahrungen mit den Optimierungsfunktionen von R, die für
viele verschiedene Arten von statistischen Schätzproblemen nützlich
sind.
