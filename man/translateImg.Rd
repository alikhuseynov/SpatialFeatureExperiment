% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/image.R
\name{translateImg}
\alias{translateImg}
\alias{translateImg,SpatRasterImage-method}
\alias{translateImg,BioFormatsImage-method}
\alias{translateImg,ExtImage-method}
\title{Translate/shift image in space}
\usage{
\S4method{translateImg}{SpatRasterImage}(x, v, ...)

\S4method{translateImg}{BioFormatsImage}(x, v, ...)

\S4method{translateImg}{ExtImage}(x, v, ...)
}
\arguments{
\item{x}{An object of class \code{*Image} as implemented in this package.}

\item{v}{Numeric vector of length 2 to shift the image in the x-y plane.}

\item{...}{Ignored. It's there so different methods can all be passed to the
same \code{lapply} in the method for SFE objects. Some methods have extra
arguments.}
}
\value{
A \code{*Image} object of the same class that has been shifted in
  space.
}
\description{
This function shifts the spatial extent of the image in the x-y plane.
}
\seealso{
Other image methods: 
\code{\link{SFE-image}},
\code{\link{affineImg}()},
\code{\link{cropImg}()},
\code{\link{dim,BioFormatsImage-method}},
\code{\link{ext}()},
\code{\link{imgRaster}()},
\code{\link{imgSource}()},
\code{\link{mirrorImg}()},
\code{\link{rotateImg}()},
\code{\link{scaleImg}()},
\code{\link{transposeImg}()}
}
\concept{Image affine transformation}
\concept{image methods}
