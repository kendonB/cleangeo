% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/clgeo_CollectionReport.R
\name{clgeo_CollectionReport}
\alias{clgeo_CollectionReport}
\title{clgeo_CollectionReport}
\usage{
clgeo_CollectionReport(sp)
}
\arguments{
\item{sp}{object extending the \code{\link[sp]{Spatial-class}} as defined in \pkg{sp}}
}
\value{
an object of class \code{data.frame} with the following columns:
\itemize{
  \item \emph{type} eventual \pkg{rgeos} issue
  \item \emph{valid} geometry validity status (according to OGC specifications)
  \item \emph{issue_type} type of geometry issue
  \item \emph{error_msg} catched message when error raised about geometry
  \item \emph{warning_msg} catched message when warning raised about geometry
}
}
\description{
Function to get a spatial data collection validation report. The function outputs
a \code{data.frame} binding all geometry validity reports, each one produced by
\code{\link{clgeo_GeometryReport}}
}
\examples{
require(maptools)
 file <- system.file("extdata", "example.shp", package = "cleangeo")
 sp <- readShapePoly(file)

 report <- clgeo_CollectionReport(sp)
}
\author{
Emmanuel Blondel \email{emmanuel.blondel1@gmail.com}
}
\seealso{
\code{\link{clgeo_GeometryReport}}
}
\keyword{geometry}
\keyword{validity}

