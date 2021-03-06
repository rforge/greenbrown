\name{TrendSTM}
\alias{TrendSTM}
\title{Trend estimation based on a season-trend model}
\description{The trend and breakpoint estimation in method STM is based on the classical additive decomposition model and is following the implementation as in the \code{\link{bfast}} approach (Verbesselt et al. 2010, 2012). Linear and harmonic terms are fitted to the original time series using ordinary least squares regression. This method can be also used to detect breakpoints in the seasonal component of a time series. The function can be applied to gridded (raster) data using the function \code{\link{TrendRaster}}.}
\usage{TrendSTM(Yt, h = 0.15, 
    breaks = NULL, mosum.pval = 0.05)}
\arguments{
  \item{Yt}{univariate time series of class \code{\link{ts}}}
  \item{h}{minimal segment size either given as fraction relative to the sample size or as an integer giving the minimal number of observations in each segment. }
  \item{breaks}{maximal number of \code{breaks} to be calculated (integer number). By default the maximal number allowed by \code{h} is used.}
  \item{mosum.pval}{Maximum p-value for the OLS-MOSUM test in order to search for breakpoints. If p = 0.05, breakpoints will be only searched in the time series trend component if the OLS-MOSUM test indicates a significant structural change in the time series. If p = 1 breakpoints will be always searched regardless if there is a significant structural change in the time series or not. See \code{\link[strucchange]{sctest}} for details.}
}

\value{The function returns a list of class "Trend". }
\references{Verbesselt, J.; Hyndman, R.; Zeileis, A.; Culvenor, D., Phenological change detection while accounting for abrupt and gradual trends in satellite image time series. Remote Sensing of Environment 2010, 114, 2970-2980. \cr
Verbesselt, J.; Zeileis, A.; Herold, M., Near real-time disturbance detection using satellite image time series. Remote Sensing of Environment 2012, 123, 98-108.}
\author{Matthias Forkel <matthias.forkel@tu-dresden.de> [aut, cre]}



\seealso{\code{\link{Trend}}, \code{\link{TrendRaster}}, \code{\link{TSGFstm}}, }
\examples{

# calculate trend 
trd <- TrendSTM(ndvi)
trd
plot(trd)

# plot the fitted season-trend model
plot(ndvi)
lines(trd$fit, col="red")


}
