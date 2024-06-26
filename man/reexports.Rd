% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reexports.R
\name{reexports}
\alias{reexports}
\alias{colData}
\alias{rowData}
\alias{colData<-}
\alias{spatialCoords}
\alias{spatialCoords<-}
\alias{spatialCoordsNames}
\alias{getImg}
\alias{imgData}
\alias{rmvImg}
\alias{counts}
\alias{logcounts}
\alias{reducedDim}
\title{Functions re-exported from other packages}
\usage{
colData(x, ...)

rowData(x, use.names = TRUE, ...)

colData(x, ...) <- value

spatialCoords(x, ...)

spatialCoords(x) <- value

spatialCoordsNames(x)

getImg(x, ...)

imgData(x)

rmvImg(x, ...)

counts(object, ...)

logcounts(object, ...)

reducedDim(x, type, ...)
}
\arguments{
\item{x}{
    A SummarizedExperiment object.
  }

\item{...}{
    For \code{assay}, arguments in \code{...} are forwarded to \code{assays}.

    For \code{rbind}, \code{cbind}, \code{...} contains SummarizedExperiment
    objects to be combined.

    For other accessors, ignored.
  }

\item{use.names}{
    For \code{rowData}: Like \code{\link[S4Vectors]{mcols}(x)}, by default
    \code{rowData(x)} propagates the rownames of \code{x} to the returned
    \link[S4Vectors]{DataFrame} object (note that for a SummarizedExperiment
    object, the rownames are also the names i.e. \code{rownames(x)} is
    always the same as \code{names(x)}). Setting \code{use.names=FALSE}
    suppresses this propagation i.e. it returns a \link[S4Vectors]{DataFrame}
    object with no rownames. Use this when \code{rowData(x)} fails,
    which can happen when the rownames contain NAs (because the rownames
    of a SummarizedExperiment object can contain NAs, but the rownames of
    a \link[S4Vectors]{DataFrame} object cannot).

    For \code{combineRows} and \code{combineCols}: See Combining section
    below.
  }

\item{value}{
    An object of a class specified in the S4 method
    signature or as outlined in \sQuote{Details}.
  }

\item{object}{A \code{SingleCellExperiment} object, which includes SFE.}

\item{type}{Name or numeric index to indicate which \code{reducedDim} to get,
such as "PCA". By default the first item in \code{reducedDims}.}
}
\description{
These are some commonly used getters and setters of classes that SFE inherits
so you don't have to separately attach those packages to use these functions.
}
