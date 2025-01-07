\name{hello}
\alias{hello}
\title{Distr.summary.x}
\usage{
hello()
}
\description{


***CONFIDENCE INTERVALS***
INTERPRETATIONS

It is not possible to conclude that the parameter belongs to this interval with probability 0.95
because miu is a constant and the observed interval is not random since it is based on a
specific sample; therefore miu either belongs or does not belong to the interval, and this is
unknown since u is unknown.

1 - alpha is the probability that an interval based on a generic sample drawn at random from the
population contains the parameter.

CI - MEAN KNOWN POPULATION VARIANCE:

CI_(1 - alpha) miu = [xbar -+ z_alpha/2 * sigma / sqrt(n) ]

Z = (xbar - miu) / (sigma/sqrt(n)) ~ N(0, 1)

CI - MEAN UNKNOWN POPULATION VARIANCE:

CI_(1 - alpha) miu = [xbar -+ t_(n-1); alpha/2 * sigma / sqrt(n) ]

T = (xbar - miu) / (sigma/sqrt(n)) ~ t_(n-1)

CI - PROPORTION, LARGE SAMPLE:

CI_(1 - alpha) p = [phat -+ z_alpha/2 * sqrt((phat* 1-phat)/n)]

Z = (phat - p) / sqrt(p*(1-p)/n) ~ N(0, 1)

Assumptions:

Large sample: n*phat(1 - phat) > 5

CI _ DIFFERENCE BETWEEN MEANS - PAIRED SAMPLES:

//KNOWN VARIANCE

CI_(1-alpha) (miu_x - miu_y) = [dhat -+ z_alpha/2 * sqrt(sigma_d ^ 2/n)]

=CI_(1-alpha) (miu_x - miu_y) = dhat -+ z_alpha/2 * sqrt((sigma_x^2 + sigma_y^2 -
2sigma_xy)/n)

* Recall that covariance(sigma_xy) = r_xy * s_x * s_y

//UNKNOWN VARIANCE

CI_(1-alpha) (miu_x - miu_y) = [dhat -+ t_(n-1), alpha/2 * sqrt(s_d ^ 2/n)]

=CI_(1-alpha) (miu_x - miu_y) = dhat -+ t_(n-1), alpha/2 * sqrt((s_x^2 + s_y^2 - 2s_xy)/n)

Assumptions: Joint normality (small samples) or large samples

CI _ DIFFERENCE BETWEEN MEANS - INDEPENDENT SAMPLES

//KNOWN VARIANCE

CI_(1-alpha) (miu_x - miu_y) = (xhat - yhat) -+ z_alpha/2 * sqrt((sigma_x^2/n_x) + (sigma_y^2
/n_y))

//UNKNOWN VARIANCE ASSUMED EQUAL

CI_(1-alpha) (miu_x - miu_y) = (xhat - yhat) -+ t_(n_x + n_y -2), alpha/2 * sqrt((s_pool^2/n_x) +
(s_pool^2 /n_y))

With s^2_pool = ((n_x -1) * s^2_x + (n_y - 1) * s^2_x) / (n_x + n_y - 2)

//UNKNOWN VARIANCE ASSUMED DIFFERENT

Only with R. standard error = sqrt((s_x^2/n_x) + (s_y^2 /n_y))

CI - DIFFERENCE BETWEEN PROPORTIONS

CI_(1 - alpha) p_x - p_y = [(phat_x - phat_y) -+ z_alpha/2 * sqrt((phat_x* 1-phat_x)/n_x) +
(phat_y* 1-phat_y)/n_y))]

SAMPLE SIZE DETERMINATION

First case: Mean with known variancen>= ((z_alpha/2)^2 * sigma^2)/ ME^2

Recall that: CI = 2ME

Second case: proportion with large sample size

n>= ((z_alpha/2)^2 * 0.5^2)/ ME^2

***HYPOTHESIS TESTING***

SIGNIFICANCE LEVEL OF A TEST:

The significance level of a test represents the maximum probability of committing a type 1 error
when we take a decision based on such test. Indeed, remember that alpha quantifies the
maximum probability of rejecting the null hypothesis when it is true.

POWER OF A TEST:

Correctly rejecting the null hypothesis when the alternative hypothesis is true: 1 - beta
Beta being the probability of a type two error.

PROBABILITIES OF TYPE I AND TYPE II ERRORS:

In the case of a one-sided right-tailed test:

alpha_* = Pr(xbar > xbar* | miu = miu0)

beta_* = Pr(xbar <= xbar* | miu = miu1)

Remember that there is a trade-off between the two errors.

P-VALUE DEFINITION:
The smallest significance level at which H0 would be rejected.
AND/OR
The probability of obtaining a test statistic as extreme or more extreme than the observed test
statistic under the null hypothesis and in the direction of the alternative hypothesis.

HYPOTHESIS TESTS:Recall that they all take the form (xbar - miu_0) / se
The standard errors are found in the following way:

* for two tailed tests multiply by 2 the probability to find the p-value
TEST FOR THE DIFFERENCE BETWEEN PROPORTIONS (unique):

Pooled estimation is used to test the common proportion: phat_0 = (n_x * phat_x) + (n_y *
phat_y) / (n_x + n_y) - since p_0 is not known, it must be estimated.

Standard error: sqrt((phat_0 * (1-phat_0)/ n_x) + (phat_0 * (1-phat_0)/ n_y))

GOODNESS OF FIT AND INDEPENDENCE TEST

Goodness of fit:

Sigma from k= 1 to K of (O_k - E_k)^2 / E_k ~ X^2 (K-1)

Independence test:

Sigma from i=1 to r, sigma from j=1 to c of (O_ij - E_ij)^2 / E_ij ~ X^2 ((r-1)*(c-1))***SIMPLE LINEAR REGRESSION***

WEAK ASSUMPTIONS:

E(e_i) = 0, Var(e_i) = sigma^2_e for each i, Cor(e_i, e_h) = 0 for each i, h.

STRONG ASSUMPTIONS:

Weak assumptions + the error e has normal distribution: e_i ~ N(0, sigma^2_e)

Under the normality hypothesis, non-correlation implies independence. Thus under strong
assumptions Y_i are independent and normally distributed. The residuals are not only
uncorrelated but also independent.

ESTIMATOR PROPERTIES:

They are linear combinations of the (random) sample observations on the dependent
variable

Under the weak assumptions the estimators:

- Are unbiased for the corresponding model parameters in the population

- Have variance that tends to zero as the sample size increases and depends on the
sample observations and also on the variance of the errors, sigma^2.

Under the strong assumptions the estimators have a normal distribution

- It is therefore possible to make inference on the parameters of the linear model in the
population

SSE:

Sigma from i = 1 to n, of (y_i - yhat*_i)^2 = (y_i - b*0-b1*x_i)^2

SSE = (1-R^2) * SST = (1-R^2) * (n-1) * s^2_y

* Recall that SST = (n-1) * s^2_y

s^2_e (AKA VARIANCE OF THE MODELl):

s^2_e = SSE/(n-2)

SSE = (1-R^2)* SST = (1-R^2)* (n - 1) * s^2_yESTIMATING b1:

b_1 = s_xy / s^2_x = r_xy * s_y / s_x

s^2x = n /(n-1) * SIGMA(x^2_i/n - xbar^2) = 1/n * SIGMA (x_i - xbar)^2 *could be (n-1) if s^2_x

S_xy = ((x_i - xbar) * (y_i - ybar)) / n

s_xy = r_xy * s_x * s_y

ESTIMATING b0:

b0 = ybar - b1*xbar

FINDING R^2:

R^2 = SSR/SST = 1 - SSE/SST

In the case you have one x, R^2 = r^2_xy

R_xy = s_xy / (s_x * s_y) Clearly: R_xy^2 = s_xy^2 / (s_x^2 * s_y^2) * use in simple regr

STANDARD ERROR OF b0:

se(b0) = sqrt(s^2_e *(1/n + (xbar^2/(n-1)*s^2_x)))

STANDARD ERROR OF b1:

se(b1) = sqrt(s^2_e / ((n-1) * s2.x))

CONFIDENCE INTERVAL OF b1:

[b_1 -+ t_n-2; alpha/2 * sqrt(s^2_e / (n-1) * s2.x)]

REJECTING THE NULL HYPOTHESIS (B1 = B^0_1):

It is usually assumed that B^0_1 = 0

B1 < B^0_1 -> Reject null hypothesis (B1 = 0) if: t.obs < t_n-2, alpha/2B1 != B^0_1 -> Reject null hypothesis (B1 = 0) if: |t.obs| > t_n-2, alpha/2

B1 > B^0_1 -> Reject null hypothesis (B1 = 0) if: t.obs > t_n-2, alpha/2

t.obs = (b1 - B^0_1) / (s.e * sqrt(1/(n-1)* (s^2.x))) Or given by R

CONFIDENCE INTERVAL FOR miu_g = B_0 + B_1 * x_g:

[yhat -+ t_n-2; alpha/2 * s_e* sqrt( 1/n + (x_g - xbar)^2/(n-1) * s2.x)]

PREDICTION INTERVAL FOR Y_g

[yhat -+ t_n-2; alpha/2 * s_e* sqrt(1+ 1/n + (x_g - xbar)^2/(n-1) * s2.x)]

(The prediction includes indeed both the uncertainty due to the estimation of the expected value
as well as the uncertainty related to the deviation of the individual values from the expected
value.)

***MULTIPLE LINEAR REGRESSION***

F-STATISTIC:

F = (SSR/K) / (SSE/(n - K - 1))

ADJUSTED R^2:

1 - (SSE/(n - K - 1)) / SST/(n - 1) = 1 - (s^2_e / s^2_Y)

s^2_e:

SSE/ (n-K-1)

GLOBAL SIGNIFICANCE:

The global significance of the model refers to the statistical test with null hypothesis that all
coefficients of the model are zero against the alternative that at least one coefficient is non-zero.

MULTICOLLINEARITY:leads to the erroneous acceptance of the null hypothesis.


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
