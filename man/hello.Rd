\name{hello}
\alias{hello}
\title{Distr.summary.x}
\usage{
hello()
}
\description{
V. Qualitative nominali -> torta o barre

V. Qualitative ordinali -> preferibile barre

V. Quantitative discrete -> aste o fr. cum (anche boxplot)

V. Quantitative continue -> istogramma o ogiva (anche boxplot)

Misure di sintesi

centrali : mediana moda media

non centrali : quartili, decili...

Estremi baffi boxplot:

baffo_sup = q3 + 1.5 * (q3 - q1)

baffo_inf = q1 - 1.5 * (q3 - q1)

Indici di variabilità = range, range interquartile, var, dev. stand., coeff. di variazione

Analisi di due V.A.

2 qualitative = barre

1 qual. e 1 quant. = boxplot

2 quant. = scatter

VAR = (1/(n-1)) * E(xi - media)^2 = (1/(n-1))*(E(xi^2) - (n * media^2))

COV = (1/n-1)*(E((xi - mediax) * (yi - mediay)))

CORxy = COVxy/(sx * sy)

SOMMA:EXPECTED VALUE = n * media_campionaria

SOMMA:VARIANZA = n * varianza_campionaria

MEDIA: EXPECTED VALUE = media_campionaria

MEDIA: VARIANZA = s^2 / n

BERNOULLI: media = p ;
varianza = p * (1-p)

Standard error = sqrt(sd^2/n)

DIFFERENZA FRA MEDIE CAMPIONI INDIPENDENTI

s_pool = ((nx-1)*sx^2+(ny-1)*sy^2) / (nx+ny-2)

Se hanno varianza uguale:

se = sqrt(s_pool^2/nx + s_pool^2/ny)

Se hanno varianza diversa:

se = sqrt(sx^2/nx + sy^2/ny)

DIFFERENZA FRA MEDIE CAMPIONI APPAIATI

se = sqrt((sx^2+sy^2-2*cov) / n
}
