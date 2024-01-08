\name{hello}
\alias{hello}
\title{Distr.summary.x}
\usage{
hello()
}
\description{
stima per intervallo: stimatore puntuale +/- margine di errore

margine di errore = (fattore di affidabilità)(standard error)

fattore affidabilità = 1-alfa 

1-alfa grande -> intervallo più ampio 

non si può sapere se un intervallo contiene o meno il parametro, si sa che
estraendo 100 campioni il 1-alfa% conterrà il parametro 

intervallo varianza nota:

CI(u) = [x_bar+z(alfa/2)*varianza/radice(n)]

funzione: CI.mean()

verifica di ipotesi tra due medie u0<u1:

regione di rifiuto x_bar = u0+z(alfa)*[varianza/radice(n)]

p errore secondo tipo: pnorm((x_bar-u1)/var/sqrt(n))

p_value = probabilità di osservare un valore della statistica test estremo

p_value = 1-pnorm((x_bar-u0)/var/sqrt(n))

pvalue>alfa non rifiuto H0

test bilaterale: 

x_bar>/< u0 +/- z(alfa/2)* var/sqrt(n)

differenza tra medie: 

regione di rifiuto var non note: 

x-y>/< mu0+t(alfa,DF)*se(x-y)

se(x-y) = sqrt(Sx^2/nx+Sy^2/ny)

funzioni: TESTmean()-> ricorda alternative: "greater","less","two.sided"

TEST.diffmean()-> ricorda type: "independent","paired"

test sulla proporzione:

H1 = p<p0

rifiuto se p_hat<p0-z(alfa)*sqrt(p0(1-p0)/n)

p value = P(z<(p_hat-p0)/sqrt(p0(1-p0)/n))

H1 = p>p0 

rifiuto se p_hat>p0-z(alfa)*sqrt(p0(1-p0)/n)

p value = P(z>(p_hat-p0)/sqrt(p0(1-p0)/n))

H1 : p=/=p0

p-p0>z(alfa/2)*ME(p)

differenza tra proporzioni

TEST.prop

TEST.diffprop

test chi-quadro

chisq.test(x,y)

REGRESSIONE SEMPLICE

SSE = sommatoria((yi-y_hati)^2)

somma degli errori al quadrato, yi = osservazione campionaria

Sxy = Rxy*Sx*Sy

somma dei quadrati totali, deviazioni dei valori osservati dalla loro media

SST = sommatoria((yi-y_bar)^2)= Sy^2(n-1)

somma dei quadrati della regressione, somma delle deviazioni al q delle previsioni dalla media 

variabile dipendente 

SSR = sommatoria((yi-y-bar)^2)

SST = SSE+SSR
R^2= 1 - SSE/SST, R^2= rxy^2
SSR = (n-1)b1^2*sx^2

assunzioni deboli:
1) linearità E(B1)=B1
2) omoschedasticità VAR(Yi)=(sigma errore)^2
3) errori non correlati cor(Yi,Yh) = 0

Var(B1) = (sigma errore)^2/((n-1)sx^2)

var(B0) = sigma errore^2*(1/n + x_bar^2/((n-1)Sx^2))

Serrore^2 = MSE = SSE/(n-2)

ipotesi forti: l'errore ha distribuzione normale'

se(B1)= sigmaER*sqrt(1/((n-1)Sx^2))

intervallo di confidenza B1:

CI(1-alfa)(B1)=B1+/-t(n-1,alfa/2)*se(B1)

t asterisco= (b1-B1(0))/se(B1)

se H1:

B1<B1(0) ->-t(n-2, alfa) > t asterisco

B1=/=B1(0) -> t(n-2,alfa/2)

B1>B1(0) -> t asterisco >t(n-2, alfa)

lm() previsione 

confint() -> intervallo confidenza B1 e B0 

predict() -> intervallo di confidenza media e intervallo di previsione 

predict(lm, data.frame(), interval("confidence"/"prediction"), conf.level)

analisi dei residui: 
plot(funzione lm, which) which = 1,2,3,4,5

-------------------------------------------------------

STIMA PER INTERVALLO 

VAR NOTA: CI= c(x_bar-z_alfa_2*s/sqrt(n), x_bar+z_alfa_2*s/sqrt(n))

VAR NON NOTA: CI= c(x_bar-t_alfa_2*se, x_bar+t_alfa_2*se)

STIMA PER INTERVALLO - PROPORZIONI

CI = c(p_hat - z_alfa_2 * sqrt(p_hat*(1-p_hat)/n), p_hat + z_alfa_2 * sqrt(p_hat*(1-p_hat)/n))

STIMA PER INTERVALLO - DIFFERENZA TRA MEDIE INDIPENDENTI

varianze note => SE= sqrt(s2x/nx + s2y/ny) (SI USA QNORM)

varianze non note diverse => SE= sqrt(s2x/nx + s2y/ny) (SI USA T STUDENT)

varianze non note uguali => SE= sqrt(s_pool/nx + s_pool/ny) (SI USA T STUDENT)

STIMA PER INTERVALLO - DIFFERENZA TRA MEDIE APPAIATI

varianze note => SE= sqrt((s2x+s2y-sxy)/n) (SI USA QNORM)

varianze non note => SE= SE= sqrt((s2x+s2y-sxy)/n) (SI USA T STUDENT)

STIMA PER INTERVALLO - DIFFERENZA TRA PROPORZIONI

SE = sqrt(px*(1-px)/nx + py*(1-py)/ny)

TEST DI IPOTESI

STATISTICA TEST = z_oss * (X_bar - ipotesi)/SE

STATISTICA TEST PROP = (p_hat - p_ipotesi)/sqrt(p_ipotesi*(1-p_ipotesi)/n)

PVALUE (nel caso vogliamo dimostrare <)= pnorm(z_oss) oppure pt(z_oss, n-1)

se H0 ipotizza proporzioni uguali => p_hat = (nx*px+ny*py)/(nx+ny)

REGIONE DI RIFIUTO= x_bar +/- z_alfa/t_alfa * se

errore alfa = pnorm(x_bar, nuovo_val, se)

errore beta = pnorm(x_bar, nuovo_val, se)

TEST CHI QUADRO

STATISTICA TEST = sum[(Oi-Ei)^2/Ei]

chisq.test(vettore, p=c(vettore con prob))

pchisq e qchisq

TEST CHI QUADRO INDIPENDENZA (H0: indipendenti)

costruisco Ekj = (k*j)/tot

sum[(Ekj - Okj)^2/Ekj]

RR = qchisq(p, (k-1)*(j-1))

PVALUE = 1-pchisq

MODELLO DI REGRESSIONE LINEARE

b1 = sxy/s2x = rxy*sy/sx

b0 = y_bar - b1 * x_bar

R2 = SSR/SST = 1-SSE/SST

SST = (n-1)*s2y

SSR = SST*b1^2*s2x

varianza modello: s2e= SSE/(n-2)

var_b1= s2e/((n-1)*s2x)

var_b0= s2e*(1/n + x_bar^2/((n-2)*s2x))

se_b1= sqrt(s2e/((n-1)*s2x))

se_b0= sqrt(s2e*(1/n + x_bar^2/((n-2)*s2x)))

STATISTICA TEST: z=(b1-b0)








}
