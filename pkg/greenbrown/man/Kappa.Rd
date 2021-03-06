\name{Kappa}
\alias{Kappa}
\title{Calculate the Kappa coefficient of two classifications}
\description{This function takes a contingency table as calculated with \code{\link{table}} or \code{\link[raster]{crosstab}} and computes the Kappa coefficient.}
\usage{Kappa(tab)}
\arguments{
  \item{tab}{contingency table as calculated with \code{\link{table}} or \code{\link{crosstab}}}
}

\value{Kappa coeffcient}
\references{Congalton, R.G. (1991): A review of assessing the accuracy of classifications of remotely sensed data. - Remote Sensing of Environment 1991, 37, 35-46.}
\author{Matthias Forkel <matthias.forkel@tu-dresden.de> [aut, cre]}



\seealso{\code{\link{CompareClassification}}, \code{\link{AccuracyAssessment}}, \code{\link{TrendClassification}}	}
\examples{

# two classifications: 
a <- c(1, 1, 1, 2, 2, 2, 3, 4, 5, 5, 5, 1, 1, 1, 2, 2, 2, 3, 4, 5, 5, 3, 3, 2, 2)
b <- c(1, 2, 1, 2, 2, 2, 3, 4, 2, 2, 5, 1, 2, 2, 2, 1, 2, 3, 4, 5, 5, 3, 3, 2, 2)

# calculate first a contingency table
tab <- table(a, b)

# calculate Kappa coeffcient
Kappa(tab)

}
