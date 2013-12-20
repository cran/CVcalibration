\name{samplesize}
\alias{samplesize}
\title{Sample Size Estimation For Calibration Study}
\description{
Compute the sample size needed for a calibration study assuming that the coefficients of the variation of measurements are constants. 
}
\usage{
samplesize(x0, d0, x=seq(20, 200, length=1000), CVx, CVy)
}
\arguments{
\item{x0}{
The x-value you plan to calibrate with the estimated calibration equation 
}
\item{d0}{
The required length of the 95\% confidence interval of the calibrated x-value based on the estimated calibration equation. The narrow confidence interval require a large sample size.
}
\item{x}{
The empirical observations of the target distribution from which $x$-values will be drawn in the planned study.
}
\item{CVx}{
The underlying coefficient of variation of measurement $x$
}
\item{CVy}{
The underlying coefficient of variation of measurement $y$
}
}
\value{
\item{size}{The sample size needed for estimating the calibration equation based on (1) CVx only; (2) CVy only; (3) both CVx and CVy; and (4) the ratio of CVy^2/CVx^2.
}
}

\author{Lu Tian, He Qi}

\examples{
samplesize(40, 10, x=seq(10, 200, length=1000), CVx=0.1, CVy=0.05)
}
