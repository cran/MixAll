% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/global.R, R/missingValues.R
\docType{methods}
\name{missingValues}
\alias{missingValues}
\alias{missingValues,ClusterMixedDataModel-method}
\alias{missingValues,ClusterDiagGaussian-method}
\alias{missingValues,ClusterDiagGaussianComponent-method}
\alias{missingValues,ClusterGammaComponent-method}
\alias{missingValues,ClusterGamma-method}
\alias{missingValues,ClusterCategoricalComponent-method}
\alias{missingValues,ClusterCategorical-method}
\alias{missingValues,ClusterPoissonComponent-method}
\alias{missingValues,ClusterPoisson-method}
\alias{missingValues,ClusterPredict-method}
\alias{missingValues,ClusterPredictMixedData-method}
\alias{missingValues,KmmComponent-method}
\alias{missingValues,KmmModel-method}
\title{Return the missing values of a component or a cluster class.}
\usage{
missingValues(x)

\S4method{missingValues}{ClusterMixedDataModel}(x)

\S4method{missingValues}{ClusterDiagGaussianComponent}(x)

\S4method{missingValues}{ClusterDiagGaussian}(x)

\S4method{missingValues}{ClusterGammaComponent}(x)

\S4method{missingValues}{ClusterGamma}(x)

\S4method{missingValues}{ClusterCategoricalComponent}(x)

\S4method{missingValues}{ClusterCategorical}(x)

\S4method{missingValues}{ClusterPoissonComponent}(x)

\S4method{missingValues}{ClusterPoisson}(x)

\S4method{missingValues}{ClusterPredict}(x)

\S4method{missingValues}{ClusterPredictMixedData}(x)

\S4method{missingValues}{KmmComponent}(x)

\S4method{missingValues}{KmmModel}(x)
}
\arguments{
\item{x}{an object that can return the imputed missing values}
}
\value{
A matrix with three columns (row index, column index, value)
}
\description{
The missing methods allow the user to get the imputed mssing
values from a mixture model.
}
\examples{
\donttest{
## add 10 missing values as random
data(geyser)
x = as.matrix(geyser); n <- nrow(x); p <- ncol(x);
indexes <- matrix(c(round(runif(5,1,n)), round(runif(5,1,p))), ncol=2);
x[indexes] <- NA;
## estimate model (using fast strategy, results may be misleading)
model <- clusterDiagGaussian(data=x, nbCluster=2:3, strategy = clusterFastStrategy())
missingValues(model)
}

}
