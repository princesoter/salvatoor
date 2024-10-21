\name{hello}
\alias{hello}
\title{Distr.summary.x}
\usage{
hello()
}
\description{
When describing a graph:

Comment on: central tendency measure, non-central position measures,
dispersion, shape of distribution

Summary measures:

Variance:

Population: 1/N sigma (xi - miu)^2

Sample: 1/(n-1) sigma (xi - xbar)^2 = n/( n-1) * (sigma (xi^2)/n) - xbar^2

CV: s / |xbar|

Cross products: (xi - xbar)* (yi - ybar)

Covariance:

Population: 1/N sigma(xi - xbar)* (yi - ybar)

Sample s_xy: 1/(n-1) *sigma(xi - xbar)* (yi - ybar) = sigma (xi*yi - n*xbar*ybar)/(n-1)

Linear correlation coefficient rxy = s_xy/ s_x * s_y

Pearson’s correlation coefficient:

n <-

sum.x <-

sum.y < -

sum.x2 <-

sum.y2 <-

sum.prod <-xbar <- sum.x/n

ybar <- sum.y/n

mean.x2 <- sum.x2/n

mean.y2 <- sum.y2/n

s2.x <- (n/(n-1)) *(mean.x2-xbar ^2)

s2.y <- (n/(n-1)) *(mean.y2-ybar ^2)

cov.xy <- sum.prod/(n-1)

r.xy <- cov.xy/(sqrt(s2.x*s2.y))

r.xy

OR

sum.xi <- 21101

sum.yi <- 3520

sum.x2i <- 8139025

sum.y2i <- 103316

sum.xi.xbar.yi.ybar <- 174063.4

n <- 159

x.bar <- sum.xi/n

y.bar <- sum.yi/n

s.x <- sqrt((n/(n-1))*((sum.x2i/n)-x.bar^2)) #sd Clicks

s.xs.y <- sqrt((n/(n-1))*((sum.y2i/n)-y.bar^2)) #sd Reactions

s.y

r.xy <- s.xy/(s.x*s.y)

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Sample Variance

n <-

mean.x.sqrd <-

xbar <-

s2.x <- (n/(n-1)) *(mean.x.sqrd - (xbar) ^2)

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Covariance

n <-

sum.prod <-

sum.prod/(n-1) [sum.prod given]

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Variance of Joint Distribution (Dependent)

var.x <-

var.y <-

r.xy <-

cov.xy <- r.xy*sqrt(var.x)*sqrt(var.y)var.jointxy <- var.x + var.y + 2*cov.xy

var.jointxy

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Variance of Joint Distribution (Independent)

var.x <-

var.y <-

var.jointxy <- var.x + var.y

var.jointxy

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Expected value and variance of a linear transformation of a r.v.

Proof 1: E(Y)= sigma (a+bx)P(x) = a * sigma P(x) + sigma x * P(x) = a

+ b*E(x) = a + b*miu

Proof 2: sigma (a+bx - (a+b*miu))^2 * P(x) = sigma (bx - bmiu)^2 =

b^2 * sigma (x - miu)^2 * P(x) = b^2Var(x) = b^2 sigma^2

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Normal R.V. - Linear Transformation

Y = a + bX becomes N(a + b*miu), b^2sigma^2)

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Standardization of a R.V.

Z = (X- miu)/ sigma- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Consider a linear combination of two r.v. X and Y:

Joint normal distribution:

(aX + bY) becomes N(a*miux + b*miuy, a^2*sigmax^2 + b^2sigmay^2 + 2abcov.xy)

In case of independence:

(aX + bY) becomes N(a*miux + b*miuy, a^2*sigmax^2 + b^2sigmay^2)

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Sum and Mean of i.i.d. R.V.

Sum becomes N(n*miu, n*sigma^2)

Mean becomes N(miu, sigma^2 / n)

This is in the case of central limit theorem too, with sufficiently large n.

For sufficiently large n, the distributions of the sum and the mean of n r.v. X1, X2, …, Xn

i.i.d. As a r.x. X can be approximated by the normal distribution, whatever the

distribution of X

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Standard errors

The standard errors are estimates of the standard deviations of the

sample means based on sample sizes drawn.

The standard error can be interpreted as the expected deviation of a

generic estimate from the difference between the two populations'means. My - My

The standard errors give us an idea of how much the estimates might

vary, but they do not allow us to definitively conclude that one estimate

(e.g., xˉ\bar{x}xˉ) is closer to or farther from its population mean (μX)

compared to the other estimate (e.g., yˉ\bar{y}yˉ from μY).

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Standard error - single estimator

sqrt(sigma^2)/n)

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Standard error - single proportion

sqrt(p*(1-p)/n)

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Standard error - paired samples - known (SE) or unknown (se)

n <-

s2.x <-

s2.y <-

s.xy <-

se_xminy <- sqrt((s2.x + s2.y - 2*s.xy)/n)

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -Standard error - known independent samples

n.x <-

n.y <-

s2.x <-

s2.y <-

SE_xminy <- sqrt(s2.x/n.x + s2.y/n.y)

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Standard error - unknown independent samples (equal variances)

First calculate S.pool :

n.x <-

n.y <-

s2.x <-

s2.y <-

s.pool <- ((n.x -1) * s2.x + (n.y -1) * s2.y)/(n.x + n.y - 2)

SE_xminy <- sqrt(s.pool/n.x + s.pool/n.y)

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Standard error - independent samples (different variances)

n.x <-

n.y <-

s2.x <-s2.y <-

se_xminy <- sqrt(s2.x/n.x + s2.y/n.y)

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Standard error - difference between proportions (independent)

p.x <-

p.y <-

n.x <-

n.y <-

se_pxminpy <- sqrt(((p.x * (1-p.x))/n.x) + ((p.y * (1-p.y))/n.y))



}
