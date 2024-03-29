% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{tetrascatt_c}
\alias{tetrascatt_c}
\title{tetrascatt_c}
\usage{
tetrascatt_c(cw, g, h, freq, Tet, Ver, kversor)
}
\arguments{
\item{cw}{sound speed in the water in m/s}

\item{g}{density constrast value, i.e  g= rho1/rhow, where rho1 and rhow
are the density values of the stcatterer and the unbounded medium
respectively}

\item{h}{density sound speed constrast value   i.e  h= c1/cw, where c1 is
the sound speed of the stcatterer}

\item{freq}{an array of frequencies, where the scattering is computed.}

\item{Tet}{a matrix containing the four index of each tetrahedron.}

\item{Ver}{a matrix with the vertex of the tetrahedra, each vertex has to
have three coordinates.}

\item{kversor}{three component vector that indicates the direction of the
incident plane wave.}
}
\value{
A complex number array which contains the backward
differential far-field scattering cross-section (f infinity)
values at each frequency.
}
\description{
Computes scattering from a volumetric mesh
efficientlty, it is an auxiliary function called by tetrascatt function.
}
\seealso{
\code{\link{tetrascatt}}
}
