# Libraries
library(st514)
library(tidyverse)
library(ggExtra)

# Exercise 1.4 ------------------------------------------------------------

data("P1-4") # data

names(tbl) <- c("sales", "profits", "assets") # naming the variables


# > a Plot the scatter and marginal dot diagram  --------------------------

scatterplot <- ggplot(tbl, aes(x = sales, y = profits)) +
  geom_point()

scatterplot

marginal <- ggMarginal(scatterplot, type = "histogram")

marginal


# > b Compute sample mean, variance, covariance and correlation co --------



# Exercise 1.5 ------------------------------------------------------------



# > a Plot scatter and dot diagrams ---------------------------------------



# > b Compute mean, variance-covariance array and correlation array -------




# Exercise 1.8 ------------------------------------------------------------





# Exercise 1.1.4 ----------------------------------------------------------




# > a Plot scatter diagram ------------------------------------------------




# > b Compute mean, variance-covariance and correlation array -------------


