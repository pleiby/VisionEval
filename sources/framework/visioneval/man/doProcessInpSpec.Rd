% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/initialization.R
\name{doProcessInpSpec}
\alias{doProcessInpSpec}
\title{Filters Inp specifications list based on OPTIONAL specification attributes.}
\usage{
doProcessInpSpec(InpSpecs_ls, InputDir = "inputs")
}
\arguments{
\item{InpSpecs_ls}{A standard specifications list for Inp specifications.}

\item{InputDir}{The path to the input directory.}
}
\value{
A list containing the Inp specification components that meet the
criteria of either not being optional or being optional and the specified
input file is present.
}
\description{
\code{doProcessInpSpec} a visioneval framework control function that filters
out Inp specifications whose OPTIONAL specification attribute is TRUE but the
specified input file is not present.
}
\details{
An Inp specification component may have an OPTIONAL specification whose value
is TRUE. If so, and if the specified input file is present, then the input
specification needs to be processed. This function checks whether the
OPTIONAL specification is present, whether its value is TRUE, and whether the
file exists. If all of these are true, then the input specification needs to
be processed. The input specification also needs to be processed if it is
not optional. A specification is not optional if the OPTIONAL attribute is
not present or if it is present and the value is not TRUE. The function
returns a list of all the Inp specifications that meet these criteria.
}
