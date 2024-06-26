% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/image.R
\name{toExtImage}
\alias{toExtImage}
\alias{toExtImage,BioFormatsImage-method}
\alias{toExtImage,SpatRasterImage-method}
\title{Convert images to ExtImage}
\usage{
\S4method{toExtImage}{BioFormatsImage}(x, resolution = 4L, channel = NULL)

\S4method{toExtImage}{SpatRasterImage}(x, maxcell = 1e+07, channel = NULL)
}
\arguments{
\item{x}{Either a \code{BioFormatsImage} or \code{SpatRasterImage} object.}

\item{resolution}{Integer, which resolution in the \code{BioFormatsImage} to
read and convert. Defaults to 4, which is a lower resolution. Ignored if
only 1 resolution is present.}

\item{channel}{Integer vector to indicate channel(s) to read. If \code{NULL},
then all channels will be read.}

\item{maxcell}{Maximum number of pixels when \code{SpatRasterImage} is read
into memory.}
}
\value{
A \code{ExtImage} object. The image is loaded into memory.
}
\description{
The \code{ExtImage} class is a thin wrapper around the \code{Image} class in
\code{ExtImage} so it inherits from \code{VirtualSpatialImage} as required by
\code{SpatialExperiment} and has extent as used in Voyager's plotting
functions. This function converts \code{SpatRasterImage} (thin wrapper around
the class in \code{terra}) and \code{BioFormatsImage} into \code{ExtImage} for
image operations as implemented in the \code{ExtImage} package.
}
\seealso{
toSpatRasterImage
}
\concept{Image classes}
