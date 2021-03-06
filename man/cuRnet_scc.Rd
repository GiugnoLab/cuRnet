% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cuRnet.R
\name{cuRnet_scc}
\alias{cuRnet_scc}
\title{\code{cuRnet_scc}: Strongly Connected Components
This function computes strongly connected components membership for every vertex of the input graph.}
\usage{
cuRnet_scc(graph)
}
\arguments{
\item{graph}{A cuRnet graph object created with \code{cuRnet_graph}.}
}
\value{
A \code{NumericMatrix} of 1 row and number of columns equal to the number of graph vertices. Each cell reports the identifier of the connected component associated with the corresponding vertex.
}
\description{
\code{cuRnet_scc}: Strongly Connected Components
This function computes strongly connected components membership for every vertex of the input graph.
}
\details{

}
\examples{
\dontrun{
library(igraph)
library(cuRnet)
rg <- sample_fitness_pl(10000, 30000, 2.2, 2.3)
cdf <- data.frame( ends(rg, E(rg))[,1], ends(rg, E(rg))[,2] )
colnames(cdf) <- c("from", "to")
cg <- cuRnet_graph(cdf)
cc <- cuRnet_scc(cg)
length(unique(cc[1,])) #number of found strongly connected components
}

}
