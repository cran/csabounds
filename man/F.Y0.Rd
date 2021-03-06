% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qott.R
\name{F.Y0}
\alias{F.Y0}
\title{F.Y0}
\usage{
F.Y0(ytmin1, y.seq, Y0tmin1, Y0tmin2, Y0tqteobj, h = NULL, method = "level")
}
\arguments{
\item{ytmin1}{the value of ytmin1 to condition on}

\item{y.seq}{possible values for y to take}

\item{Y0tmin1}{vector of outcomes for the treated group in period t-1}

\item{Y0tmin2}{vector of outcomes for the treated group in period t-2}

\item{Y0tqteobj}{a qte object for obtaining the counterfactual distribution
of untreated potential outcomes for the treated group in period t}

\item{h}{optional bandwidth}

\item{method}{"level" or "rank" determining whether method should
be used conditional on ytmin1 or the rank of ytmin1}
}
\value{
distribution F(y|ytmin1)
}
\description{
compute F(y|ytmin1) where F is the conditional
 distribution of untreated potential outcomes for the treated group
 conditional on ytmin1;  This is computed under the copula
 stability assumption
}
\examples{
data(displacements)
ytmin1 <- 10
Y1t <- subset(displacements, year==2011 & treat==1)$learn
Y0tmin1 <- subset(displacements, year==2007 & treat==1)$learn
Y0tmin2 <- subset(displacements, year==2003 & treat==1)$learn
y.seq <- seq(min(c(Y0tmin2,Y0tmin1,Y1t)), max(c(Y0tmin2,Y0tmin1,Y1t)), length.out=100)
cc <- qte::CiC(learn ~ treat,
               t=2011, tmin1=2007, tname="year",
               idname="id", panel=TRUE, data=displacements,
               probs=seq(.05,.95,.01),se=FALSE)
cc$F.treated.tmin2 <- ecdf(subset(displacements, year==2003 & treat==1)$learn)
cc$F.treated.tmin1 <- ecdf(subset(displacements, year==2007 & treat==1)$learn)
F.Y0(ytmin1, y.seq, Y0tmin1, Y0tmin2, cc)

}
