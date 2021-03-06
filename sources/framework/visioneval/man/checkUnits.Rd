% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/validation.R
\name{checkUnits}
\alias{checkUnits}
\title{Check measurement units for consistency with recognized units for stated type.}
\usage{
checkUnits(DataType, Units)
}
\arguments{
\item{DataType}{a string which identifies the data type as specified in the
TYPE attribute for a data set.}

\item{Units}{a string identifying the measurement units as specified in the
UNITS attribute for a data set after processing with the parseUnitsSpec
function.}
}
\value{
A list which contains the following elements:
DataType: a string identifying the data type.
UnitType: a string identifying whether the units correspond to a 'simple'
data type, a 'complex' data type, or a 'compound' data type.
Units: a string identifying the units.
Elements: a list containing the elements of a compound units. Components of
this list are:
Types: the complex type of each element,
Units: the units of each element,
Operators: the operators that separate the units.
Errors: a string containing an error message or character(0) if no error.
}
\description{
\code{checkUnits} a visioneval framework control function that checks the
specified UNITS for a dataset for consistency with the recognized units for
the TYPE specification for the dataset. It also splits compound units into
elements.
}
\details{
The visioneval code recognizes 4 simple data types (integer, double, logical,
and character) and 9 complex data types (e.g. distance, time, mass).
The simple data types can have any units of measure, but the complex data
types must use units of measure that are declared in the Types() function. In
addition, there is a compound data type that can have units that are composed
of the units of two or more complex data types. For example, speed is a
compound data type composed of distance divided by speed. With this example,
speed in miles per hour would be represented as MI/HR. This function checks
the UNITS specification for a dataset for consistency with the recognized
units for the given data TYPE. To check the units of a compound data type,
the function splits the units into elements and the operators that separate
the elements. It identifies the element units, the complex data type for each
element and the operators that separate the elements.
}
