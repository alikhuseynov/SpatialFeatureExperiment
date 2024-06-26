% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/image.R
\name{ext}
\alias{ext}
\alias{ext,BioFormatsImage-method}
\alias{ext,ExtImage-method}
\alias{ext,SpatRasterImage-method}
\alias{ext<-,BioFormatsImage,numeric-method}
\alias{ext<-,ExtImage,numeric-method}
\alias{ext<-,SpatRasterImage,numeric-method}
\title{Get and set extent of image objects}
\usage{
\S4method{ext}{BioFormatsImage}(x)

\S4method{ext}{ExtImage}(x)

\S4method{ext}{SpatRasterImage}(x)

\S4method{ext}{BioFormatsImage,numeric}(x) <- value

\S4method{ext}{ExtImage,numeric}(x) <- value

\S4method{ext}{SpatRasterImage,numeric}(x) <- value
}
\arguments{
\item{x}{A \code{*Image} object.}

\item{value}{A numeric vector with names "xmin", "xmax", "ymin", "ymax"
specifying the extent to use.}
}
\value{
Getters return a numeric vector specifying the extent. Setters return
  a \code{*Image} object of the same class as the input.
}
\description{
Unlike in \code{SpatialExperiment}, images in SFE have extents which are used
to align them to the geometries and in geometric operations on SFE objects.
These functions get or set the extent for S4 image classes inheriting from
\code{VirtualSpatialImage} implemented in the SFE package.
}
\note{
For \code{SpatRasterImage}, the image may be may not be loaded into
memory. You can check if the image is loaded into memory with
\code{terra::inMemory(imgRaster(x))}, and check the original file path with
\code{\link{imgSource}}. If the image is not loaded into memory, then the
original file must be present at the path indicated by
\code{\link{imgSource}} in order for any code using the image to work, which
includes this function \code{ext}.

For \code{BioFormatsImage}, internally only the pre-transform extent is
stored. The \code{ext} getter will apply the transformation on the fly. The
setter sets the pre-transformation extent.
}
\seealso{
Other image methods: 
\code{\link{SFE-image}},
\code{\link{affineImg}()},
\code{\link{cropImg}()},
\code{\link{dim,BioFormatsImage-method}},
\code{\link{imgRaster}()},
\code{\link{imgSource}()},
\code{\link{mirrorImg}()},
\code{\link{rotateImg}()},
\code{\link{scaleImg}()},
\code{\link{translateImg}()},
\code{\link{transposeImg}()}
}
\concept{Image methods}
\concept{image methods}
