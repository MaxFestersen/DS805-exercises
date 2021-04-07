# Libraries
library(st514) # Pacake from DS805 book - Applied multivariate statistical analysis
library(tidyverse)
library(ggExtra) # for ggMarinal (markinal plots)


# Exercise 1.4 ------------------------------------------------------------

data("P1-4") # data

names(tbl) <- c("sales", "profits", "assets") # naming the variables


# > a Plot the scatter and marginal dot diagram  --------------------------

scatterplot <- ggplot(tbl, aes(x = sales, y = profits)) +
  geom_point()

scatterplot

marginal <- ggMarginal(scat, type = "histogram")

marginal


# > b Compute sample mean, variance, covariance and correlation co --------




# Exercise 1.5 ------------------------------------------------------------



# > a Plot scatter and dot diagrams ---------------------------------------




# > b Compute mean, variance-covariance array and correlation array -------


