This package is an extension package for the `DockerParallel` package and defines the common functions for the container class. It cannot be directly used by the end user. The user should use the package `doRedisContainer` and `RedisParamContainer`.

# doRedisContainer
The package `doRedisContainer` provides the worker container with foreach doRedis backend.At the time of writing, the package `doRedis` is not available on CRAN, the latest version can be installed from github `remotes::install_github("bwlewis/doRedis")`. The worker container can be made by

```r
library(doRedisContainer)
workerContainer <- doRedisWorkerContainer(image = "r-base")
```
The argument `image` determines the base image used by the container. The server container can be obtained by

```r
serverContainer <- doRedisServerContainer()
```

# RedisParamContainer
The package `RedisParamContainer` provides the worker container with BiocParallel RedisParam backend. At the time of writing, the package `RedisParam` is not available on Bioconductor, the latest version can be installed from github `remotes::install_github("mtmorgan/RedisParam")`. The worker container can be made by

```r
library(RedisParamContainer)
workerContainer <- RedisParamWorkerContainer(image = "r-base")
```
The argument `image` determines the base image used by the container. The server container can be obtained by

```r
serverContainer <- RedisParamServerContainer()
```
