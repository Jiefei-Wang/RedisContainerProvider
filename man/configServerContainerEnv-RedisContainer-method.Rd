% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/adaptor-RedisContainer.R
\name{configServerContainerEnv,RedisContainer-method}
\alias{configServerContainerEnv,RedisContainer-method}
\title{Configure the server container environment,}
\usage{
\S4method{configServerContainerEnv}{RedisContainer}(container, cluster, verbose = FALSE)
}
\arguments{
\item{container}{Reference Container Object. The server container.}

\item{cluster}{S4 \code{DockerCluster} object.}

\item{verbose}{Integer. The verbose level, default 1.}
}
\value{
A \code{RedisContainer} object
}
\description{
Configure the server container environment, the environment variable
\code{serverPort}, \code{serverPassword} and \code{sshPubKey} will be set in this method
}
