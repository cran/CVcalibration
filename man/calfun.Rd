\name{calfun}
\alias{calfun}
\title{Estimating the Calibration Equation}
\description{
Estimating the calibration equation ``y=a+b*x'' with error-in observations assuming that the coefficients of the variation of the measurements are constants. 
}
\usage{
calfun(x, y, CVx, CVy, lambda0)
}
\arguments{
\item{x}{
The observed $x$ values 
}
\item{y}{
The observed $y$ values
}
\item{CVx}{
The underlying coefficient of variation of measurement $x$
}
\item{CVy}{
The underlying coefficient of variation of measurement $y$
}
\item{lambda0}{
The ratio, $CV_y^2/CV_x^2$
}
}
\value{
\item{result}{The estimated regression coefficients, standard error and confidence intervals based on (1) CVx only; (2) CVy only; (3) both CVx and CVy; and (4) the ratio of CVy^2/CVx^2.
}
}

\author{Lu Tian, He Qi}

\examples{
n=100
sigma0=10

beta0=5
beta1=1.2
CVx=0.15
CVy=0.07

lambda0=CVy^2/CVx^2

x0=runif(n, 20, 200)
y0=beta0+beta1*x0+rnorm(n)*sigma0
x=x0+x0*CVx*rnorm(n)
y=y0+y0*CVy*rnorm(n)

fit=calfun(x, y, CVx, CVy, lambda0)
fit
}


