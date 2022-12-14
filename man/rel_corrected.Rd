% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rel_corrected.R
\name{rel_corrected}
\alias{rel_corrected}
\title{Calculate the reliability of subtraction or regression scores}
\usage{
rel_corrected(re_main, re_base, raw_main, raw_base, method = "subtraction")
}
\arguments{
\item{re_main}{reliability of the condition of main interest. (It could be
Guttman's lambda2 or Cronbach's alpha.)}

\item{re_base}{reliability of the baseline condition. (It could be
Guttman's lambda2 or Cronbach's alpha.)}

\item{raw_main}{the raw performance of the condition of main interest for all
participants.}

\item{raw_base}{the raw performance of the baseline condition for all
participants.}

\item{method}{the method to be used to correct the reliability. Default to
"subtraction". Options are "subtraction" or "regression".}
}
\value{
A list of the relevant information:
\itemize{
\item reliability: a numeric value for the reliability.
\item approach: the approach used to calculate the reliability.
}
}
\description{
This function calculates the reliability of subtraction
\verb{(..., method="subtraction")} or regression \verb{(..., method="regression")} scores between the two inputs.
}
\examples{
raw_main <- c(2, 3, 2.5, 5, 3, 4, 2, 1, 3, 1)
raw_base <- c(2, 5, 2, 1, 3, 5, 3, 2, 4, 1)
rel_corrected(.9, .8, raw_main, raw_base)
rel_corrected(.9, .8, raw_main, raw_base, method="reg")
}
