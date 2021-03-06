% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CalculateUrbanMixMeasure.R
\name{estimateUrbanMixModel}
\alias{estimateUrbanMixModel}
\title{Estimate urban mixed-use model}
\usage{
estimateUrbanMixModel(EstData_df, StartTerms_)
}
\arguments{
\item{EstData_df}{A data frame containing estimation data.}

\item{StartTerms_}{A character vector of the terms of the model to be
tested in the model. The function estimates the model using these terms
and then drops all terms whose p value is greater than 0.05.}
}
\value{
A list which has the following components:
Type: a string identifying the type of model ("binomial"),
Formula: a string representation of the model equation,
PrepFun: a function that prepares inputs to be applied in the binomial model,
OutFun: a function that transforms the result of applying the binomial model.
Summary: the summary of the binomial model estimation results.
}
\description{
\code{estimateUrbanMixModel} estimates a binomial logit model for identifying
whether a household lives in an urban mixed-use neighborhood.
}
\details{
This function estimates a binomial logit model for predicting whether a
household is living in an urban mixed-use neighborhood.
}
