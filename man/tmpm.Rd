\name{tmpm}
\alias{tmpm}
\title{
Trauma Mortality Prediction Model
}
\description{
An R port for the tmpm trauma mortality prediction model using the ICD-9, ICD-10,
or AIS lexicon in long or wide format. Based upon the \code{tmpm} package
created by Alan Cook, MD for STATA
}
\usage{
tmpm(Pdat,ILex = 1,ICs = marcTable,Long = FALSE)
}
\arguments{
  \item{Pdat}{
An \code{R} object, usually a \code{data.frame}. May come in either a
wide or long format. Patient ID's must be present in the first column,
followed by the diagnosis column(s) that contain diagnosis codes in either the
ICD-9, ICD-10, or AIS lexicon. The wide format may have multiple Dx columns
for each patient containing their respective diagnosis codes while the long
format should contain 3 columns of patient ID, Dx, and diagnosis code.
}
  \item{ILex}{
An \code{integer} value used to select which lexicon to use for the tmpm
analysis. AIS is the default lexicon and may be selected by the entry of 1.
The ICD-9 lexicon may be selected by 9, and the ICD-10 may be selected 10.
}
  \item{ICs}{
An \code{R} object, usually a \code{data.frame}. The "master" diagnosis
lexicon that may contain the diagnosis codes for the ICD-9, ICD-10, and
AIS lexicons. This is already included and will default to the obhect
\code{marcTable} if no other object is specified. Must contain 4 columns
containing the lexicon, index, corresponding marc value, and body region
value.
}
  \item{Long}{
A \code{logical} object. Allows the user to specify the format of the
\code{Pdat} object. Default is wide format. \code{Long = TRUE} must
be specified to analyze data of long format.
}
}
\value{
The tmpm algorithm will return a \code{data.frame} that contains the
original dataset in wide format with an added last column containing
the calcualted probability of death for each patient.
}
\references{
Glance, LG, Osler, TM, Mukamel, DB, et al. TMPM-ICD9
A Trauma Mortality Prediction Model Based on ICD-9-CM
Codes. \emph{Ann Surg} 2009; 249:1032-1039.

Osler, T, Glance, L, Buzas, JS, et al. A Trauma Mortality
Prediction Model Based on the Anatomic Injury Scale.
\emph{Ann surg} 2008; 247:1041-1048.
}
\author{
Cody Moore

Alan Cook, MD
}
\note{
Uses the Trauma Mortality prediction model created by Turner Osler, MD, MSc and Laurent Glance, MD.

Based upon the tmpm package written in STATA by Alan Cook, MD
}
\examples{
## To evaluate ICD-9 patient data in wide format

    #inc_key  dx1    dx2 dx3    dx4
  #1 10000007 821.11 822 815.03 823.00
  #2 10011410 881.00 891 822.10 813.42

a <- data.frame(matrix(c(10000007,821.11,822,815.03,823,
          10011410,881,891,822.1,813.42),nrow = 2,byrow = TRUE))
names(a) <- c("inc_key","dx1","dx2","dx3","dx4")
b <- tmpm(a,9)

## If the dataset is in long format

    #inc_key  variable value
  #1 10000007      dx1 821.11
  #2 10011410      dx1 881.00
  #3 10000007      dx2 822.00
  #4 10011410      dx2 891.00
  #5 10000007      dx3 815.03
  #6 10011410      dx3 822.10
  #7 10000007      dx4 823.00
  #8 10011410      dx4 813.42

c <- melt(a,id = "inc_key")
d <- tmpm(c,9,Long = TRUE)
}
\keyword{ ~tmpm }
\keyword{ ~mortality }
