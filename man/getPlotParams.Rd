% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pophelper.R
\name{getPlotParams}
\alias{getPlotParams}
\title{Internal: Generate parameters for plots with labels}
\usage{
getPlotParams(grplab = NA, plotnum = 1, grplabsize = NA,
  grplabangle = NA, grplabjust = NA, pointsize = NA, linesize = NA)
}
\arguments{
\item{grplab}{A character vector of labels same length as number of individuals.}

\item{plotnum}{A numeric indicating the number of plots on the figure.}

\item{grplabsize}{A numeric indicating the size of the labels.}

\item{grplabangle}{A numeric indicating the angle/rotation of labels. 0 is horizontal while 90 is vertical.}

\item{grplabjust}{A numeric indicating the justification of labels. Defaults to 0.5 if grplabangle=0  or 1 if grplabangle between 20 and 135.}

\item{pointsize}{A numeric indicating the size of points on label marker line.}

\item{linesize}{A numeric indicating the thickness of the label marker line.}
}
\value{
A list with following plot parameters: grplab, plotnum, grplabsize, 
grplabangle, grplabjust, pointsize, linesize.
}
\description{
Internal: Generates various parameters required for plotting with labels.
}
