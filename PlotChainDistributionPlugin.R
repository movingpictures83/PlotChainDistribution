knitr::opts_chunk$set(echo = TRUE, message = FALSE, warning = FALSE, fig.width = 8)
library(lipidr)
library(ggplot2)


input <- function(inputfile) {
   de_results <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {
pdf(outputfile)
write.csv(de_results$AveExpr, paste(outputfile, "csv", sep="."))	
plot_chain_distribution(de_results)

}
