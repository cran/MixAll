### R code from vignette source 'Introduction-Mixtures.Rnw'
### Encoding: UTF-8

###################################################
### code chunk number 1: prelim
###################################################
library(MixAll)
MixAll.version <- packageDescription("MixAll")$Version
MixAll.date <- packageDescription("MixAll")$Date


###################################################
### code chunk number 2: Introduction-Mixtures.Rnw:314-315
###################################################
clusterAlgo(algo="SemiSEM",nbIteration=100,epsilon=1e-08)


###################################################
### code chunk number 3: Introduction-Mixtures.Rnw:342-343
###################################################
clusterInit(method="random", nbInit= 2, algo="CEM", nbIteration=10,epsilon=1e-04)


###################################################
### code chunk number 4: Introduction-Mixtures.Rnw:418-423
###################################################
clusterStrategy(nbTry=2, nbInit=5, initMethod="class"
                       , initAlgo="CEM", nbInitIteration=10, initEpsilon=1e-02
                       , nbShortRun=5
                       , shortRunAlgo="SEM", nbShortIteration=50, shortEpsilon=1e-04
                       , longRunAlgo="EM", nbLongIteration=100, longEpsilon=1e-08)


###################################################
### code chunk number 5: Introduction-Mixtures.Rnw:439-440
###################################################
clusterFastStrategy()


###################################################
### code chunk number 6: Introduction-Mixtures.Rnw:446-447
###################################################
clusterSemiSEMStrategy()


###################################################
### code chunk number 7: Introduction-Mixtures.Rnw:500-503
###################################################
clusterDiagGaussianNames()
clusterDiagGaussianNames("all", "equal", "free")
clusterValidDiagGaussianNames(c("gaussian_pk_sjk","gaussian_p_ljk"))


###################################################
### code chunk number 8: Introduction-Mixtures.Rnw:525-528
###################################################
clusterCategoricalNames()
clusterCategoricalNames("all", "equal")
clusterValidCategoricalNames(c("categorical_pk_pjk","categorical_p_pk"))


###################################################
### code chunk number 9: Introduction-Mixtures.Rnw:564-567
###################################################
clusterPoissonNames()
clusterPoissonNames("all")
clusterValidPoissonNames(c("poisson_pk_ljk","poisson_p_ljlk"))


###################################################
### code chunk number 10: Introduction-Mixtures.Rnw:638-641
###################################################
clusterGammaNames()
clusterGammaNames("all", "equal")
clusterValidGammaNames(c("gamma_pk_aj_bk","gamma_p_ajk_bjk"))


###################################################
### code chunk number 11: Introduction-Mixtures.Rnw:723-731
###################################################
data(geyser);
x = as.matrix(geyser); n <- nrow(x); p <- ncol(x);
indexes  <- matrix(c(round(runif(10,1,n)), round(runif(10,1,p))), ncol=2);
x[indexes] <- NA;
model <- clusterDiagGaussian(data=x, nbCluster=3, strategy = clusterFastStrategy())
summary(model)
missingValues(model)
plot(model)


###################################################
### code chunk number 12: Introduction-Mixtures.Rnw:764-772
###################################################
data(birds)
x = as.matrix(birds);  n <- nrow(x); p <- ncol(x);
indexes  <- matrix(c(round(runif(10,1,n)), round(runif(10,1,p))), ncol=2);
x[indexes] <- NA;
model <- clusterCategorical(data=x, nbCluster=3, strategy = clusterFastStrategy())
summary(model)
missingValues(model)
plot(model)


###################################################
### code chunk number 13: Introduction-Mixtures.Rnw:803-811
###################################################
data(geyser);
x = as.matrix(geyser); n <- nrow(x); p <- ncol(x);
indexes  <- matrix(c(round(runif(10,1,n)), round(runif(10,1,p))), ncol=2);
x[indexes] <- NA;
model <- clusterGamma(data=x, nbCluster=3, strategy = clusterFastStrategy())
summary(model)
missingValues(model)
plot(model)


###################################################
### code chunk number 14: Introduction-Mixtures.Rnw:841-847
###################################################
data(DebTrivedi)
dt <- DebTrivedi[1:500, c(1, 6,8, 15)]
model <- clusterPoisson( data=dt, nbCluster=3, strategy = clusterFastStrategy())
summary(model)
missingValues(model)
plot(model)


###################################################
### code chunk number 15: Introduction-Mixtures.Rnw:875-883
###################################################
data(HeartDisease.cat)
data(HeartDisease.cont)
ldata = list(HeartDisease.cat,HeartDisease.cont);
lnames = c("categorical_pk_pjk","gaussian_pk_sjk")
model <- clusterHeterogeneous(ldata, lnames, nbCluster=3, strategy = clusterFastStrategy())
summary(model)
missingValues(model)
plot(model)


