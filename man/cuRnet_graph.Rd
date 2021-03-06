% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cuRnet.R
\name{cuRnet_graph}
\alias{cuRnet_graph}
\title{Create a cuRnet graph object from a 3-column \code{DataFrame}.
The \code{DataFrame} represents edges in the form (source vertex, destination vertex, weight). 
First two colums are of type \code{charatcter}, weights are of type \code{numeric}.
Weights column is optional, but must be specified for algorithms that require the information, such as SSSP.}
\usage{
cuRnet_graph(dataFrame)
}
\description{
Create a cuRnet graph object from a 3-column \code{DataFrame}.
The \code{DataFrame} represents edges in the form (source vertex, destination vertex, weight). 
First two colums are of type \code{charatcter}, weights are of type \code{numeric}.
Weights column is optional, but must be specified for algorithms that require the information, such as SSSP.
}
\details{

}
\examples{

\dontrun{
library(STRINGdb)
library(igraph)
library(cuRnet)
ss <- STRINGdb$new( version="10", species=9606, score_threshold=900)
g <- ss$get_graph()
from <- unique(ends(g,E(g))[,1])[1:10]
x <- data.frame("from" = ends(g,E(g))[,1], "to" = ends(g,E(g))[,2], "score" = E(g)$combined_score/1000)
cgraph <- cuRnet_graph(x)
}

}
