% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/manage_local_repo.R
\name{release_package}
\alias{release_package}
\title{Release a package to the local repo.}
\usage{
release_package(package_location, repo_base, type = "win", version = "all",
  r_versions = c("2.15", "3.0", "3.1", "3.2"), ...)
}
\arguments{
\item{package_location}{the full path to the package's file. This should
be the package's file name represented by a character vector of length one.}

\item{repo_base}{the base directory of the local repository represented by a
character vector of length one.}

\item{type}{the type of package file being released. Should be
\code{win} (default), \code{mac} or \code{src} for Windows binary,
Mac binary and source package distributions respectively.}

\item{version}{determines which terminal directory to release the package
file to, given a value for \code{type} that is either \code{wim} or
\code{mac}. Can also use \code{"all"} to release the package to all terminal
directories for either \code{wim} or \code{mac}. If \code{type} is
\code{src}, then \code{version} is ignored, as this is not needed.}

\item{r_versions}{a character vector of R versions. This is used to determine
the terminal directories when \code{type} is \code{"win"} or \code{"mac"} and
\code{version} is \code{"all"}. Should follow the specifications set out in
R Installation and Admin guide.}

\item{...}{optional arguments to pass to \code{\link{file.path}}}
}
\value{
No return value. Will release a package to the desired local repo's
terminal directory and update the relevant index file. Otherwise will return
a suitable error message.
}
\description{
This will take a package from a given location and populate it to the
relevant trees in the local repo. It will create terminal directories if
needed.
}
\examples{
\dontrun{
package_location <- file.path(".", "submissions")
package_location <- file.path(package_location, "test_package.zip")
repo_base <- file.path(".")
release_package(package_location, repo_base)
}
}
\references{
\href{http://cran.r-project.org/doc/manuals/R-admin.html}{Setting up a package repository}
}

