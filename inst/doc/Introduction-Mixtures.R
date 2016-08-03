### R code from vignette source 'Introduction-Mixtures.Rnw'
### Encoding: UTF-8

###################################################
### code chunk number 1: prelim
###################################################
library(MixAll)
MixAll.version <- packageDescription("MixAll")$Version
MixAll.date <- packageDescription("MixAll")$Date


###################################################
### code chunk number 2: Introduction-Mixtures.Rnw:353-355
###################################################
clusterAlgo()
clusterAlgo(algo="SemiSEM",nbIteration=100,epsilon=1e-08)


###################################################
### code chunk number 3: Introduction-Mixtures.Rnw:385-387
###################################################
clusterInit()
clusterInit(method="random", nbInit= 2, algo="CEM", nbIteration=10,epsilon=1e-04)


###################################################
### code chunk number 4: Introduction-Mixtures.Rnw:466-467
###################################################
clusterStrategy()


###################################################
### code chunk number 5: Introduction-Mixtures.Rnw:483-484
###################################################
clusterFastStrategy()


###################################################
### code chunk number 6: Introduction-Mixtures.Rnw:491-492
###################################################
clusterSemiSEMStrategy()


###################################################
### code chunk number 7: Introduction-Mixtures.Rnw:545-548
###################################################
clusterDiagGaussianNames()
clusterDiagGaussianNames("all", "equal", "free")
clusterValidDiagGaussianNames(c("gaussian_pk_sjk","gaussian_p_ljk"))


###################################################
### code chunk number 8: Introduction-Mixtures.Rnw:575-578
###################################################
clusterCategoricalNames()
clusterCategoricalNames("all", "equal")
clusterValidCategoricalNames(c("categorical_pk_pjk","categorical_p_pk"))


###################################################
### code chunk number 9: Introduction-Mixtures.Rnw:615-618
###################################################
clusterPoissonNames()
clusterPoissonNames("all","proportional")
clusterValidPoissonNames(c("poisson_pk_ljk","poisson_p_ljlk"))


###################################################
### code chunk number 10: Introduction-Mixtures.Rnw:691-694
###################################################
clusterGammaNames()
clusterGammaNames("all", "equal","free","free","all")
clusterValidGammaNames(c("gamma_pk_aj_bk","gamma_p_ajk_bjk"))


###################################################
### code chunk number 11: Introduction-Mixtures.Rnw:753-755
###################################################
clusterKernelNames()
clusterValidKernelNames(c("kernelGaussian_pk_sk","kernelGaussian_pk_s"))


###################################################
### code chunk number 12: Introduction-Mixtures.Rnw:863-872
###################################################
data(geyser);
x = as.matrix(geyser); n <- nrow(x); p <- ncol(x);
# add missing values at random
indexes  <- matrix(c(round(runif(10,1,n)), round(runif(10,1,p))), ncol=2);
x[indexes] <- NA;
model <- clusterDiagGaussian(data=x, nbCluster=3, strategy = clusterFastStrategy())
summary(model)
missingValues(model)
plot(model)


###################################################
### code chunk number 13: Introduction-Mixtures.Rnw:906-914
###################################################
data(birds)
x = as.matrix(birds);  n <- nrow(x); p <- ncol(x);
indexes  <- matrix(c(round(runif(10,1,n)), round(runif(10,1,p))), ncol=2);
x[indexes] <- NA;
model <- clusterCategorical(data=x, nbCluster=2)
summary(model)
missingValues(model)
plot(model)


###################################################
### code chunk number 14: Introduction-Mixtures.Rnw:946-954
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
### code chunk number 15: Introduction-Mixtures.Rnw:985-991
###################################################
data(DebTrivedi)
dt <- DebTrivedi[1:500, c(1, 6,8, 15)]
model <- clusterPoisson( data=dt, nbCluster=3, strategy = clusterFastStrategy())
summary(model)
missingValues(model)
plot(model)


###################################################
### code chunk number 16: Introduction-Mixtures.Rnw:1028-1032
###################################################
data(bullsEye)
model <- clusterKernel( data=bullsEye[,1:2], nbCluster=2, models = "kernelGaussian_pk_s", strategy = clusterFastStrategy())
summary(model)
plot(model)


###################################################
### code chunk number 17: Introduction-Mixtures.Rnw:1061-1069
###################################################
data(HeartDisease.cat)
data(HeartDisease.cont)
ldata = list(HeartDisease.cat,HeartDisease.cont);
lnames = c("categorical_pk_pjk","gaussian_pk_sjk")
model <- clusterMixedData(ldata, lnames, nbCluster=3, strategy = clusterFastStrategy())
summary(model)
missingValues(model)
plot(model)


