\name{PhenoTrs}
\alias{PhenoTrs}
\title{Method 'Trs' to calculate phenology metrics}
\description{This function implements threshold methods for phenology. This is rather an internal function; please use the function \code{\link{Phenology}} to apply this method.}
\usage{PhenoTrs(x, approach = c("White", 
    "Trs"), trs = NULL, 
    min.mean = 0.1, calc.pheno = TRUE, 
    plot = FALSE, ...)}
\arguments{
  \item{x}{seasonal cycle of one year}
  \item{approach}{\code{approach} to be used to calculate phenology metrics. 'White' (White et al. 1997) or 'Trs' for simple threshold.}
  \item{trs}{threshold to be used for \code{approach} "Trs"}
  \item{min.mean}{minimum mean annual value in order to calculate phenology metrics. Use this threshold to suppress the calculation of metrics in grid cells with low average values	}
  \item{calc.pheno}{calculate phenology metrics or return NA?}
  \item{plot}{\code{plot} results?}
  \item{\dots}{further arguments (currently not used)}
}

\value{The function returns a vector with SOS, EOS, LOS, POP, MGS, rsp, rau, PEAK, MSP and MAU. }
\references{White MA, Thornton PE, Running SW (1997) A continental phenology model for monitoring vegetation responses to interannual climatic variability. Global Biogeochem Cycles 11, 217-234.}
\author{Matthias Forkel <matthias.forkel@tu-dresden.de> [aut, cre]}



\seealso{\code{\link{Phenology}}}
\examples{

# perform time series processing for first year pof data
x <- TsPP(ndvi, interpolate=TRUE)[1:365]
plot(x)

# calculate phenology metrics for first year
PhenoTrs(x, plot=TRUE, approach="White")
PhenoTrs(x, plot=TRUE, approach="Trs", trs=0.25)

}
