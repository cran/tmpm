\name{marcTable}
\alias{marcTable}
\docType{data}
\title{
marcTable, default Lexicon for tmpm 1.0.3
}
\description{
A \code{data.frame} containing the master lexicon for the tmpm package.
Contains the index of ais, ICD-9, and ICD-10 trauma codes as well as
their respective marc weights within the tmpm model separated by body region.
}
\usage{marcTable}
\format{
  A data frame with 10767 observations on the following 4 variables.
  \describe{
    \item{\code{lexi}}{
    The trauma code lexicon, a factor with levels \code{ais} \code{icdIX}
    \code{icdX}.
    }
    \item{\code{index}}{
    A unique index value for each entry, a factor with 10767 levels.
    }
    \item{\code{marc}}{
    Marc weights used in the tmpm model. A numeric vector
    }
    \item{\code{bodyregion}}{Body region where the injury occured.
    A factor with levels \code{} \code{1} \code{2} \code{3} \code{4}
    \code{5} \code{6} \code{7} \code{8} \code{9} \code{A} \code{C} \code{E}
    \code{F} \code{H} \code{S}}
  }
}
\references{
Glance, LG, Osler, TM, Mukamel, DB, et al. TMPM-ICD9
A Trauma Mortality Prediction Model Based on ICD-9-CM
Codes. \emph{Ann Surg} 2009; 249:1032-1039.

Osler, T, Glance, L, Buzas, JS, et al. A Trauma Mortality
Prediction Model Based on the Anatomic Injury Scale.
\emph{Ann surg} 2008; 247:1041-1048.
}
\examples{
#  lexi index   marc       bodyregion
#1  ais 110099 -0.06503967          1
#2  ais 110202  0.13577652          1
#3  ais 110402  0.06703821          1
#4  ais 110600  0.12536530          1
#5  ais 110602 -0.01852628          1
#6  ais 110604  0.27072704          1
}
\keyword{datasets}
\keyword{tmpm}
