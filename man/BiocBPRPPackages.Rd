% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/adaptor-RedisContainer.R
\name{getExportedNames,RedisContainer-method}
\alias{getExportedNames,RedisContainer-method}
\alias{getExportedObject,RedisContainer-method}
\title{Get the exported object}
\usage{
\S4method{getExportedNames}{RedisContainer}(x)

\S4method{getExportedObject}{RedisContainer}(x, name)
}
\arguments{
\item{x}{A cloud provider or container object}

\item{name}{The name of the exported object}
}
\value{
For the exported function: The current package vector
}
\description{
Get the exported object. The objects are 'getSysPackages', 'setSysPackages',
'addSysPackages', 'getRPackages', 'setRPackages' and 'addRPackages'. see details
}
\details{
The function \code{XSysPackages} can be used to install the system package for the
worker container before running the R worker. The package will be installed by
\verb{apt-get install}.

The function \code{XRPackages} will install the R packages for the container. The
package is installed via \code{AnVIL::install}. It will first try the fast binary installation,
then fallback to \code{BiocManager::install}. Therefore, you can also provide the GitHub package
to this function.

Note that these function must be called before deploying the container.
Setting the packages will have no effect on the running container.
}
