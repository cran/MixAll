% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kmm.R
\docType{methods}
\name{plot,KmmModel-method}
\alias{plot,KmmModel-method}
\alias{plot-KmmModel}
\title{Plotting of a class [\code{\linkS4class{KmmModel}}]}
\usage{
\S4method{plot}{KmmModel}(x, y, ...)
}
\arguments{
\item{x}{an object of class [\code{\linkS4class{KmmModel}}]}

\item{y}{a list of variables to plot (subset). Variables names or indices.
If missing all the variables are represented.}

\item{...}{further arguments passed to or from other methods}
}
\description{
Plotting data from a [\code{\linkS4class{KmmModel}}] object
using the estimated parameters and partition.
}
\examples{
\donttest{
 ## the bull eyes data set
  data(bullsEye)
  model <- kmm( bullsEye, 2, models= "kmm_pk_s")
  plot(model)
  }

}
\seealso{
\code{\link{plot}}
}
