#-----------------------------------------------------------------------
#     Copyright (C) 2012-2016  Serge Iovleff, University Lille 1, Inria
#
#    This program is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as
#    published by the Free Software Foundation; either version 2 of the
#    License, or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public
#    License along with this program; if not, write to the
#    Free Software Foundation, Inc.,
#    59 Temple Place,
#    Suite 330,
#    Boston, MA 02111-1307
#    USA
#
#    Contact : S..._Dot_I..._At_stkpp_Dot_org (see copyright for ...)
#
#-----------------------------------------------------------------------
#' MixAll
#' Allows to estimate parametric mixture models with mixed data
#'  sets and missing data.
#'
#' This package contains methods allowing R users to use the clustering methods
#' of the STK++ library.
#'
#' As described at the STK++ project's home page, \url{https://www.stkpp.org},
#' STK++ is a versatile, fast, reliable and elegant collection of C++ classes
#' for statistics, clustering, linear algebra, arrays (with an Eigen-like API),
#' regression, dimension reduction, etc. Some functionalities provided by the
#' library are available in the R environment as R functions in MixAll.
#'
#' The available functionalities are:
#' \enumerate{
#'    \item Clustering (\link{clusterDiagGaussian}, \link{clusterCategorical},
#' \link{clusterPoisson}, \link{clusterGamma}, \link{clusterMixedData})
#'    \item Learning ( (\link{learnDiagGaussian}, \link{learnCategorical},
#' \link{learnPoisson}, \link{learnGamma}, \link{learnMixedData}),
#'    \item Prediction (\link{clusterPredict}).
#'  }
#'
#' @docType package
#' @author Serge Iovleff
"_PACKAGE"


#' Counting Data: DebTrivedi
#'
#' Deb and Trivedi (1997) analyze data on 4406 individuals, aged 66 and over, who are covered
#' by Medicare, a public insurance program. Originally obtained from the US National Medical
#' Expenditure Survey (NMES) for 1987/88, the data are available from the data archive of
#' the \emph{Journal of Applied Econometrics}.
#' It was prepared for an R package accompanying Kleiber and Zeileis (2008)
#' and is also available asDebTrivedi.rda in the Journal of Statistical Software
#' together with Zeileis (2006). The objective is to model the demand for medical
#' care -as captured by the number of physician/non-physician office and hospital
#' outpatient visits- by the covariates available for the patients.
#' @source \url{https://www.jstatsoft.org/htaccess.php?volume=27&type=i&issue=08&filename=paper}
#' @references
#' Zeileis, A. and Kleiber, C. and Jackma, S. (2008). "Regression Models for Count Data in R". JSS 27, 8, 1--25.
#' @name DebTrivedi
#' @docType data
#' @keywords datasets
#'
#' @examples
#'   data(DebTrivedi)
NULL


#' Quantitative Data: bullsEye 
#'
#' Generated data set containing two clusters with untypical ring shapes (circles)
#' @name bullsEye
#' @docType data
#' @keywords datasets
#'
#' @examples
#'   data(bullsEye)
NULL


#' label Data: bullsEye.target 
#'
#' Generated data set containing labels for the two clusters with untypical
#' ring shapes (circles)
#' @name bullsEye.target
#' @docType data
#' @keywords datasets
#'
#' @examples
#'   data(bullsEye.target)
NULL

#' label Data: bullsEye.cat 
#'
#' Generated data set containing two categorical variables for the two clusters
#' with untypical ring shapes (circles)
#' @name bullsEye.cat
#' @docType data
#' @keywords datasets
#'
#' @examples
#'   data(bullsEye.cat)
NULL

#' Quantitative data: Old Faithful Geyser
#'
#' The file geyser.rda contains 272 observations from the Old Faithful Geyser
#' in the Yellowstone National Park. Each observation consists of two
#' measurements: the duration (in minutes) of the eruption and the waiting
#' time (in minutes) to the next eruption.
#'
#' Old Faithful erupts more frequently than any other big geyser, although it
#' is not the largest nor the most regular geyser in the park. Its average
#' interval between two eruptions is about 76 minutes, varying from
#' 45 - 110 minutes. An eruption lasts from 1.1/2 to 5 minutes,
#' expels 3,700 - 8,400 gallons (14,000 - 32,000 liters) of boiling water, and
#' reaches heights of 106 - 184 feet (30 - 55m). It was named for its consistent
#' performance by members of the Washburn Expedition in 1870. Old Faithful is
#' still as spectacular and predictable as it was a century ago.
#'
#' @format A data frame with 272 observations on the following 2 variables.
#'
#' \describe{
#'   \item{\code{Duration}}{a numeric vector containing the duration (in minutes) of the eruption}
#'   \item{\code{Waiting.Time}}{a numeric vector containing the waiting time (in minutes) to the next eruption}
#' }
#'
#' @source \url{https://web.archive.org/web/20191110083004/http://www.geyserstudy.org/geyser.aspx?pGeyserNo=OLDFAITHFUL}
#'
#' @references
#' Hardle, W. (1991). "Smoothing Techniques with Implementation in S". Springer-Verlag, New York.
#' Azzalini, A. and Bowman, A. W. (1990). "A look at some data on the Old Faithful geyser". Applied Statistics 39, 357-365.
#'
#' @name geyser
#' @docType data
#' @keywords datasets
#'
#' @examples
#'   data(geyser)
NULL


#' Qualitative data : morphological description of birds
#'
#' The data set contains details on the morphology of birds (puffins). Each
#' individual (bird) is described by 6 qualitative variables. One variable for
#' the gender and 5 variables giving a morphological description of the birds.
#' There is 69 puffins divided in 2 sub-classes: lherminieri (34) and subalaris (35).
#'
#' This data set is also part of the Rmixmod package.
#' 
#' @format A data frame with 69 observations on the following 5 variables.
#'
#' \describe{
#'   \item{\code{gender}}{a character vector defining the gender (2 modalities, male or female).}
#'   \item{\code{eyebrow}}{a character vector describing the eyebrow stripe (4 modalities).}
#'   \item{\code{collar}}{a character vector describing the collar (5 modalities).}
#'   \item{\code{sub-caudal}}{a character vector describing the sub-caudal (5 modalities).}
#'   \item{\code{border}}{a character vector describing the border (3 modalities).}
#' }
#'
#' @source
#' Bretagnolle, V., 2007. Personal communication, source: Museum.
#'
#' @name birds
#' @docType data
#' @keywords datasets
#'
#' @examples
#'   data(birds)
NULL


#' Qualitative data : Car Evaluation
#'
#' Car Evaluation Database was derived from a simple hierarchical decision model
#' originally developed for the demonstration of DEX, M. Bohanec, V. Rajkovic:
#' Expert system for decision making.
#'
#' @format A data frame with 1728 observations on the following 6 variables.
#'
#' \describe{
#'   \item{\code{buying}}{the buying price (4 modalities: vhigh, high, med, low)}
#'   \item{\code{maint}}{the price of the maintenance (4 modalities: vhigh, high, med, low)}
#'   \item{\code{doors}}{the number of doors (4 modalities: 2, 3, 4, 5more)}
#'   \item{\code{persons}}{the capacity in terms of persons to carry (3 modalities: 2, 4, more)}
#'   \item{\code{lug_boot}}{the size of luggage boot  (3 modalities: small, med, big)}
#'   \item{\code{safety}}{the estimated safety of the car (3 modalities: low, med, high)}
#'   \item{\code{acceptability}}{the car acceptability (4 modalities: unacc, acc, good, vgood)}
#' }
#'
#' @source
#' Creator: Marko Bohanec
#' Donors: Marko Bohanec & Blaz Zupan
#' http://archive.ics.uci.edu/ml/datasets/Car+Evaluation
#'
#' @name car
#' @docType data
#' @keywords datasets
#'
#' @examples
#'   data(car)
NULL

#' Mixed data : Cleveland Heart Disease Data
#'
#' The Cleveland Heart Disease Data found in the UCI machine learning
#' repository consists of 14 variables measured on 303 individuals who have
#' heart disease. The individuals had been grouped into five levels of heart
#' disease. The information about the disease status is in the
#' \code{HeartDisease.target} data set.
#'
#' The variables consist of five continuous and eight discrete attributes, the
#' former in the \code{HeartDisease.cont} data set and the later in the
#' \code{HeartDisease.cat} data set. Three of the discrete attributes have two levels,
#' three have three levels and two have four levels. There are six missing
#' values in the data set.
#'
#' @format Three data frames with 303 observations on the following 14 variables.
#'
#' \describe{
#'  \item{\code{age}}{age in years}
#'  \item{\code{sex}}{sex (1 = male; 0 = female)}
#'  \item{\code{cp}}{chest pain type. 1: typical angina, 2: atypical angina,
#'                                    3: non-anginal pain, 4: asymptomatic }
#' \item{\code{trestbps}}{resting blood pressure (in mm Hg on admission to the  hospital)}
#' \item{\code{chol}}{serum cholestoral in mg/dl }
#' \item{\code{fbs}}{(fasting blood sugar > 120 mg/dl)  (1 = true; 0 = false)}
#' \item{\code{restecg}}{ resting electrocardiographic results.
#'    0: normal,
#'    1: having ST-T wave abnormality (T wave inversions and/or ST,
#'    elevation or depression of > 0.05 mV)
#'    2: showing probable or definite left ventricular hypertrophy by Estes\' criteria}
#' \item{\code{thalach}}{ maximum heart rate achieved}
#' \item{\code{exang}}{exercise induced angina (1 = yes; 0 = no)}
#' \item{\code{oldpeak}}{ST depression induced by exercise relative to rest}
#' \item{\code{slope}}{the slope of the peak exercise ST segment
#'        1: upsloping,
#'        2: flat,
#'        3: downsloping}
#' \item{\code{ca}}{number of major vessels (0-3) colored by flourosopy (4 missing values)}
#' \item{\code{thal}}{3 = normal; 6 = fixed defect; 7 = reversable defect (2 missing values)}
#' \item{\code{ num}}{diagnosis of heart disease (angiographic disease status).
#'               0: < 50% diameter narrowing
#'               1: > 50% diameter narrowing
#'     (in any major vessel: attributes 59 through 68 are vessels)}
#' }
#'
#' @source
#' Author: David W. Aha (aha 'AT' ics.uci.edu) (714) 856-8779
#'
#' Donors: The data was collected from the Cleveland Clinic Foundation (cleveland.data)
#'
#' https://archive.ics.uci.edu/ml/datasets/Heart+Disease
#'
#' Detrano, R., Janosi, A., Steinbrunn, W., Pfisterer, M., Schmid, J., Sandhu, S., Guppy, K., Lee, S., & Froelicher, V. (1989). International application of a new probability algorithm for the diagnosis of coronary artery disease. American Journal of Cardiology, 64,304--310.
#'
#' David W. Aha & Dennis Kibler. "Instance-based prediction of heart-disease presence with the Cleveland database."
#'
#' Gennari, J.H., Langley, P, & Fisher, D. (1989). Models of incremental concept formation. Artificial Intelligence, 40, 11--61.
#'
#'
#' @name HeartDisease.cat
#' @aliases HeartDisease HeartDisease.cat HeartDisease.cont HeartDisease.target
#' @rdname HeartDisease
#' @docType data
#' @keywords datasets
#'
#' @examples
#'summary(data(HeartDisease.cat))
#'summary(data(HeartDisease.cont))
#'summary(data(HeartDisease.target))
NULL

