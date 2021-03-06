% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qott.R
\name{u}
\alias{u}
\title{u}
\usage{
u(delt, y.seq, ytmin1.seq, Y1t, Y0tmin1, Y0tmin2, Y0tqteobj, F.y1, F.y0)
}
\arguments{
\item{delt}{the value to obtain the DoTT for}

\item{y.seq}{possible values of y}

\item{Y1t}{vector of outcomes for the treated group in period t}

\item{Y0tmin1}{vector of outcomes for the treated group in period t-1}

\item{Y0tmin2}{vector of outcomes for the treated group in period t-2}
}
\value{
scalar F^U(delt)
}
\description{
Obtains the upper bound on the Distribution of the
 Treatment Effect for the Treated (DoTT), DoTT(delt)
 under the Copula Stability Assumption.
}
\keyword{internal}
