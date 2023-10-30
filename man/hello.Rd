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

VAR2 = (n/(n-1)) * (sum(p * mi) - media^2) 

COEFF_VARIAZIONE = s / media

COV = (1/n-1)*(E((xi - mediax) * (yi - mediay)))

CORxy = COVxy/(sx * sy)

SOMMA:EXPECTED VALUE = n * media_campionaria

SOMMA:VARIANZA = n * varianza_campionaria

MEDIA: EXPECTED VALUE = media_campionaria

MEDIA: VARIANZA = s^2 / n

EXPECTED VALUE di ax + b  = a + b * E(x) 

VARIANZA di ax + b = a^2 s^2

VARIANZA di ax + by = a^2*s^2x + b^2*s^2y + 2*a*b*cov_xy

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

DEFINIZIONI

VARIANZA = media delle distanze degli scarti dalla media al quadrato

DEVIAZIONE STANDARD = distanza media dei dati dalla media 

COVARIANZA = indicatore della direzione di una relazione lineare fra due variabili quantitative

COEFFICIENTE DI CORRELAZIONE = indicatore che misura l intensità della relazione lineare

STIMATORE: funzione di variabili aleatorie utilizzata per fornire previsioni su un carattere ignoto (parametri per stabilire se sono ottimali si considera non distorsione e efficienza)

STANDARD ERROR = indica lo scostamento di una generica stima dal parametro di una popolazione

DIMOSTRAZIONI

somma e media di v.a indipend. identicam. distribuite (i.i.d.)

X1,X2,...,Xn sono v.a. iid come X con valore atteso u(mu) e varianza sigma^2.

la loro somma e la loro media sono v.a. i cui valori attesi e le cui varianze
possono essere determinati a partire da u e sigma^2

Somma = X1+...+Xn

-> E(S) = E(X1)+ ... + E(Xn)= n*u

->var(S) = Var(X1)+...+Var(Xn)= n*(sigma^2)

media: X(barra sopra) = (X1+...+Xn)/n = S/n

E(Xbarr)=E(X1/n)+...+E(Xn/n)=n*u/n= u

VAR(Xbarr)=VarX1/n)+...+var(Xn/n)=n*sigma^2/n^2=sigma^2/n


valore atteso e varianza di trasformazioni lineari di una VA

data una VA X consideriamo la sua trasf. lineare Y=a+bX

E(Y) = E(a+bX) = a+bE(X)=a+bu

VAR(Y) = var(a+bX)= b^2*sigma^2 = Sd(Y)=|b|*sd(X)=|b|*sigma

facendo riferimento a una va discreta:
  
E(Y)=sommatoria((a+bX)*Px(x)) = a+bE(X)=a*bu

VAR(Y)==sommatoria([a+bx-(a+bu)]^2Px(X))=b^2*sigma^2

combinazioni lineari di va

aX+bY

con E(X)=ux, VAR(X)=sigmax^2, E(Y)=uy,VAR(Y)=sigmay^2 e cov(X,Y)=sigmaxy

il valore atteso e la varianza della combinazione lineare:
  
  E(aX+bY)=aux+buy

VAR(aX+bY)=a^2*sigmax^2+b^2*sigmay^2-2ab*sigmaxy

}
