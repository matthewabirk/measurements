% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/conv_multiunit.R
\encoding{UTF-8}
\name{conv_multiunit}
\alias{conv_multiunit}
\title{Convert Units of Measurement Composed of Multiple Units}
\usage{
conv_multiunit(x = 1, from, to)
}
\arguments{
\item{x}{a numeric vector giving the measurement value in its original units. Default is 1.}

\item{from, to}{a string defining the multiunit with subunits separated by " / " or " * ".}
}
\description{
Converts complex units of measurement that are joined by " / " or " * ". This function supports all dimensions in \code{conv_unit_options} except for coordinates.
}
\examples{
conv_multiunit(x = 10, from = "ft / hr * F", to = "m / min * C")
conv_multiunit(x = 1:100, from = "gal_per_min * ft / psi * hp", to = "l_per_hr * km / kPa * kW")

}
\seealso{
\code{\link{conv_unit}}, \code{\link{conv_unit_options}}, \code{\link{conv_dim}}
}
\author{
Matthew A. Birk, \email{matthewabirk@gmail.com}
}
