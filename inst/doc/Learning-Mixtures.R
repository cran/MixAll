### R code from vignette source 'Learning-Mixtures.Rnw'
### Encoding: UTF-8

###################################################
### code chunk number 1: prelim
###################################################
library(MixAll)
MixAll.version <- packageDescription("MixAll")$Version
MixAll.date <- packageDescription("MixAll")$Date


###################################################
### code chunk number 2: Learning-Mixtures.Rnw:215-224
###################################################
data(iris);
x <- as.matrix(iris[,1:4]); z <- as.vector(iris[,5]); n <- nrow(x); p <- ncol(x);
indexes <- matrix(c(round(runif(5,1,n)), round(runif(5,1,p))), ncol=2);
cbind(indexes, x[indexes]) # display true values
x[indexes] <- NA;          # set them as missing
model <- learnDiagGaussian(data=x, labels = z, models = clusterDiagGaussianNames(prop = "equal"))
summary(model)
missingValues(model)
plot(model)


###################################################
### code chunk number 3: Learning-Mixtures.Rnw:235-247
###################################################
data(birds)
## add 10 missing values
x <- as.matrix(birds[,2:5]); z <- as.vector(birds[,1]); n <- nrow(x); p <- ncol(x);
indexes <- matrix(c(round(runif(5,1,n)), round(runif(5,1,p))), ncol=2);
cbind(indexes, x[indexes]) # display true values
x[indexes] <- NA;          # set them as missing
model <- learnCategorical( data=x, labels=z
                         , models = clusterCategoricalNames(prop = "equal")
                         , algo="simul", nbIter = 2)
summary(model)
missingValues(model)
plot(model)


###################################################
### code chunk number 4: Learning-Mixtures.Rnw:257-269
###################################################
data(iris)
x <- as.matrix(iris[,1:4]); z <- as.vector(iris[,5]); n <- nrow(x); p <- ncol(x);
indexes <- matrix(c(round(runif(5,1,n)), round(runif(5,1,p))), ncol=2);
cbind(indexes, x[indexes]) # display true values
x[indexes] <- NA;          # set them as missing
model <- learnGamma( data=x, labels= z,
                    , models = clusterGammaNames(prop = "equal")
                    , algo = "simul", nbIter = 2, epsilon = 1e-08
                )
summary(model)
missingValues(model)
plot(model)


###################################################
### code chunk number 5: Learning-Mixtures.Rnw:279-291
###################################################
data(DebTrivedi)
x <- DebTrivedi[, c(1, 6, 8, 15)]; z <- DebTrivedi$medicaid; n <- nrow(x); p <- ncol(x);
indexes <- matrix(c(round(runif(5,1,n)), round(runif(5,1,p))), ncol=2);
cbind(indexes, x[indexes]) # display true values
x[indexes] <- NA;          # set them as missing
model <- learnPoisson( data=x, labels=z
                     , models = clusterPoissonNames(prop = "equal")
                     , algo="simul", nbIter = 2, epsilon =  1e-08
)
summary(model)
missingValues(model)
plot(model)


###################################################
### code chunk number 6: Learning-Mixtures.Rnw:300-310
###################################################
data(bullsEye)
x <- bullsEye[,1:2]; x = as.matrix(x); n <- nrow(x); p <- ncol(x);
z <- bullsEye[,3];
model <- learnKernel( data=x, labels=z
                    , models = clusterKernelNames(prop = "equal")
                    , dim = 50, kernelName = "gaussian", kernelParameters = 1.
                    , algo="impute", nbIter = 1, epsilon =  1e-08
                    )
summary(model)
plot(model)


###################################################
### code chunk number 7: Learning-Mixtures.Rnw:323-333
###################################################
data(HeartDisease.cat)
data(HeartDisease.cont)
data(HeartDisease.target)
ldata = list(HeartDisease.cat, HeartDisease.cont);
models = c("categorical_pk_pjk","gaussian_pk_sjk")
z<-HeartDisease.target[[1]];
model <- learnMixedData(ldata, models, z, algo="simul", nbIter=2)
summary(model)
missingValues(model)
plot(model)


