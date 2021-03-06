% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qott.R
\name{u.ytmin1}
\alias{u.ytmin1}
\title{u.ytmin1}
\usage{
u.ytmin1(ytmin1, delt, y.seq, ytmin1.seq, Y1t, Y0tmin1, Y0tmin2, Y0tqteobj,
  F.y1, F.y0)
}
\arguments{
\item{ytmin1}{the value of ytmin1 to condition on}

\item{delt}{the value to obtain the DoTT for}

\item{y.seq}{possible values of y}

\item{Y1t}{vector of outcomes for the treated group in period t}

\item{Y0tmin1}{vector of outcomes for the treated group in period t-1}

\item{Y0tmin2}{vector of outcomes for the treated group in period t-2}
}
\value{
for any value of ytmin1, returns a scaler F^U(delt|ytmin1)
}
\description{
carry out the 1+inf step in computing the lower bound of the
 DoTT; everything is still conditional on ytmin1
}
\keyword{internal}
