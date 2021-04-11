# Libraries
library(st514) # Pacake from DS805 book - Applied multivariate statistical analysis
library(tidyverse)
library(ggExtra) # for ggMarginal (marginal plots)
library(SciViews) # to use boxplots and scatterplots together with pairs function
library(matlib) # For math functions: inverse/inv

# Exercise 1.4 ------------------------------------------------------------

data("P1-4") # data

names(tbl) <- c("sales", "profits", "assets") # naming the variables


# > a Plot the scatter and marginal dot diagram  --------------------------
scatterplot <- ggplot(tbl, aes(x = sales, y = profits)) +
  geom_point()

scatterplot

marginal <- ggMarginal(scatterplot, type = "histogram")
# marginal <- ggMarginal(scatterplot, type = "boxplot")
# marginal <- ggMarginal(scatterplot, type = "density")

marginal


# > b Compute sample mean, variance, covariance and correlation co --------
mean.1 <- mean(tbl$sales)
mean.2 <- mean(tbl$profits)
Variance.1 <- var(tbl$sales)
Variance.2 <- var(tbl$profits)
cov.var <- cov(tbl$sales, tbl$profits)
correlation <- cor(tbl$sales, tbl$profits)

# Intepretation of correlation
cat(paste(
  "Når sales stiger, så stiger profit også. Det kan ses pga. der er",
  "en positiv korrelation, med ~68% sikkerhed.",
  sep = "\n"))

# Exercise 1.5 ------------------------------------------------------------
# > a Plot scatter and dot diagrams ---------------------------------------
# >> Plots for profits and assets ----
scatterplot.1.5.1 <- ggplot(tbl, aes(x = profits, y = assets)) +
  geom_point()

scatterplot.1.5.1

marginal.1.5.1 <- ggMarginal(scatterplot.1.5.1, type = "histogram")

marginal.1.5.1

# >> Comment on the patterns  ----
cat(paste(
  "The data seems to to have a wide spread. There might not be a correlation.",
  "If there was a correlation, it might be negative.",
  "Looking at the results of b), the hypothesis is confirmed.",
  sep = "\n"))

# >> Plots for sales and assets ----
scatterplot.1.5.2 <- ggplot(tbl, aes(x = sales, y = assets)) +
  geom_point()

scatterplot.1.5.2

marginal.1.5.2 <- ggMarginal(scatterplot.1.5.2, type = "histogram")

marginal.1.5.2

# >> Comment on the patterns  ----
cat(paste(
  "The data seems to have a negative correlation.",
  "Looking at the results of b), the hypothesis is confirmed.",
  sep = "\n"))


# > b Compute mean, variance-covariance array and correlation array -------
# Mean for table
tbl.mean <- colMeans(tbl)
tbl.mean


# Variance-covariance for table
tbl.cov <- cov(tbl) # alt: var(tbl)
tbl.cov

# Correlation array for table
tbl.cor <- cor(tbl) # alt: var(tbl)
tbl.cor


# Exercise 1.8 ------------------------------------------------------------
# > Evaluate distance from P to Q using euclidean distance
P <- c(-1, -1)
Q <- c(1,0)
p <- 2
x <- rbind(P,Q)
# d <- dist(x, method = "euclidean", p=2) # Simple but might not work with all the restrictions in the ex description
d <- function(P, Q, A.1 = (1/3), A.2 =  (1/9), A.3 = (4/27)){
  # Returns euclidean statistical distance, with A parameters.
  # !!! Requires p = 2 (2 points for both) / 2 dimensional data
  sqrt(
      A.1 * ((P[1]-Q[1])^2) + 
      (2 * A.2) * ((P[1]-Q[1]) * (P[2]-Q[2])) +
      A.3 * ((P[2]-Q[2])^2)
    ) %>% 
    return()
}
d(P,Q)

# > Sketch the locus of points that are a constant
# squared statistical distance 1 from the point Q.
# library(emuR)
# ?locus()
# locus(Q,P)
locus.point <- function(P, Q, A.1 = (1/3), A.2 =  (1/9), A.3 = (4/27)){
  # Returns the locus points
  A.1 * ((P[1]-Q[1])^2) + 
    (2 * A.2) * ((P[1]-Q[1]) * (P[2]-Q[2])) +
    A.3 * ((P[2]-Q[2])^2) %>% 
    return()
}
locus.point(P, Q)
# Solution unfinished

# Exercise 1.1.4 ----------------------------------------------------------
data("T1-6") # data for table 1.6
names(tbl) <- c("age", "X2", "X3", "X4", "X5", "Class")

tbl.1 <- filter(tbl, `Class` == 0) %>% 
  select("age", "X2", "X3", "X4", "X5")
tbl.2 <- filter(tbl, Class == 1) %>% 
  select("age", "X2", "X3", "X4", "X5")

# > a Plot scatter diagram ------------------------------------------------
scatterplot.1.1.4 <- ggplot(tbl.2, aes(x = X2, y = X4)) +
  geom_point()
scatterplot.1.1.4

cat(paste(
  "There seems to be a positive correlation.",
  "The data almost forms a line.",
  sep="\n"
))

# > b Compute mean, variance-covariance and correlation array -------------
# Mean for table multiples sclerosis
tbl.2.mean <- colMeans(tbl.2)
tbl.2.mean


# Variance-covariance for table multiples sclerosis
tbl.2.cov <- cov(tbl.2) # alt: var(tbl.2)
tbl.2.cov

# Correlation array for table multiples sclerosis
tbl.2.cor <- cor(tbl.2)
tbl.2.cor

# Mean for table non multiples sclerosis
tbl.1.mean <- colMeans(tbl.1)
tbl.1.mean


# Variance-covariance for table non multiples sclerosis
tbl.1.cov <- cov(tbl.1) # alt: var(tbl.1)
tbl.1.cov

# Correlation array for table non multiples sclerosis
tbl.1.cor <- cor(tbl.1)
tbl.1.cor


# Exercise 1.17 -----------------------------------------------------------
data("T1-9") # data for table 1.9
names(tbl) <- c("Country", "100m", "200m", "400m", "800m", "1500m", "3000m", "Marathon")

tbl.1.17 <- tbl %>% # Formatting all values as minutes
  mutate(`100m` = `100m`/60, `200m` = `200m`/60, `400m` = `400m`/60)

# Mean for table
tbl.1.17.mean <- colMeans(tbl.1.17[-1])
tbl.1.17.mean


# Variance-covariance for table
tbl.1.17.cov <- cov(tbl.1.17[-1]) # alt: var(tbl.1.17[-1])
tbl.1.17.cov

# Correlation array for table
tbl.1.17.cor <- cor(tbl.1.17[-1])
tbl.1.17.cor

cat(paste(
  "The closer the distance, the more correlated they become.",
  "The time from 3000m to marathon is supprisingly low,",
  "given it is ~14 times as much. 3000m results are closer to marathon results",
  "than it is to 100m, despiste the distance beeing larger.",
  sep = "\n"
))

# Exercise 1.18 -----------------------------------------------------------
data("T1-9") # data for table 1.9
names(tbl) <- c("Country", "100m", "200m", "400m", "800m", "1500m", "3000m", "Marathon")

tbl.1.18 <- tbl %>% # Formatting all values as seconds
  mutate(`800m` = `800m`*60, `1500m` = `1500m`*60, `3000m` = `3000m`*60, `Marathon` = `Marathon`*60)

tbl.1.18 <- tbl.1.18 %>% # Formatting all values as m/s
  mutate(`100m` = 100/`100m`, `200m` = 200/`200m`, `400m` = 400/`400m`, `800m` = 800/`800m`, `1500m` = 1500/`1500m`, `3000m` = 3000/`3000m`, `Marathon` = 42195/`Marathon`)

# Mean for table
tbl.1.18.mean <- colMeans(tbl.1.18[-1])
tbl.1.18.mean


# Variance-covariance for table
tbl.1.18.cov <- cov(tbl.1.18[-1]) # alt: var(tbl.1.18[-1])
tbl.1.18.cov

# Correlation array for table
tbl.1.18.cor <- cor(tbl.1.18[-1])
tbl.1.18.cor

# Comparison
plot(tbl.1.18.cor, tbl.1.17.cor, col= c("red", "blue"))

cat(paste(
  "It would seem that the values are very similar.",
  "The correlation of values are correlated slightly different,",
  "but this is due to formatting.",
  sep = "\n"
))

# Exercise 1.19 (b) -------------------------------------------------------
data("T1-9") # data for table 1.9 (Nullify changes)
names(tbl) <- c("Country", "100m", "200m", "400m", "800m", "1500m", "3000m", "Marathon")
pairs(tbl, diag.panel = panel.boxplot) # Note panel.boxplot from SciViews creates diagonal boxplots


# Exercise 1.27 -----------------------------------------------------------
data("T1-11") # data for table 1.11
tbl.1.27 <- tbl
names(tbl.1.27) <- c("Size", "Visitors")


# > a) --------------------------------------------------------------------
plot(tbl.1.27)
cor(tbl.1.27)

cat(paste(
  "Not very correlated. No sir."
))

# > b) --------------------------------------------------------------------
tbl.1.27 <- tbl.1.27[-7,]
plot(tbl.1.27)
cor(tbl.1.27)

cat(paste(
  "Not so corelated. But moar.",
  "More than double correlation. Much improve. Such result. Wow.",
  sep = "\n"
))


# > c) --------------------------------------------------------------------
# Guessing results
print("nothing will fucking happen, exept maybe the grid numbers.")

# Reformatting
tbl.1.27 <- tbl.1.27 %>% 
  mutate(Size  = Size*0.0015625)

# Testing
plot(tbl.1.27)
cor(tbl.1.27)

# Explanation
cat(paste(
  "We were fucking right! We are smarts! We have inteligence.",
  "Chaning the grid sizes, will not change the relation of the numbers.",
  "Fucktarts.",
  sep = "\n"
))


# Exercise 2.3 ------------------------------------------------------------
A <- matrix(c(2, 1, 1, 3), 2, 2)
B <- matrix(c(1, 5, 4, 0, 2, 3), 2, 3)
C <- matrix(c(1, 3, 4, 2), 2, 2)
# > a) --------------------------------------------------------------------
A
t(A)

print("Nothing happens")

# >> Testing --------------------------------------------------------------
# For testing: NOT PART OF ASSIGNMENT
B
t(B)

cat(paste(
  "Is transposed: Columns and rows are swithced.",
  "The oll' switcharoo.",
  sep = "\n"         
))


# > b) --------------------------------------------------------------------
#inv(C) # mathlib
#solve(C) # base - NOTE: identical results for humans (robots might disagree)
solve(t(C))
t(solve(C))

cat(paste(
  "Same results.",
  sep = "\n"
))

# > c) --------------------------------------------------------------------
AB <- A %*% B
t(AB)
AB_pre_trans <- t(B) %*% t(A)
AB_pre_trans

cat(paste(
  "Same results.",
  sep = "\n"
))


# Exercise 2.5 ------------------------------------------------------------
Q <- matrix(c(5/13, -12/13, 12/13, 5/13), 2,2)
Q
Q %*% t(Q) #  

cat(paste(
  "Should give identity matrix - and it is",
  "Easy peasy, lemon squesy",
  sep = "\n"
))


# Exercise 2.6 ------------------------------------------------------------
A <- matrix(c(9,-2, -2, 6), 2, 2)
# > a) --------------------------------------------------------------------
A
t(A)
A == t(A)

print("It is symetric.")


# > b) --------------------------------------------------------------------
eigen(A)$values

cat(paste(
  "Yes, A is a positive definite,",
  "as all of the eigen (half-life) values are positive.",
  sep = "\n"
))



# Exercise 2.7 ------------------------------------------------------------
# > a) --------------------------------------------------------------------
eigen(A)



# > b) --------------------------------------------------------------------
eigen(A)
A
eigen(A)$vectors
L <- eigen(A)$values
V <- eigen(A)$vectors
L[1] * V[,1] %*% t(V[,1]) + L[2] * V[,2] %*% t(V[,2])

cat(paste(
  "The summped values of the product of eigenvalues and",
  "eigenvectors creates the matrix. Or something.",
  "Max wrote it. He understands shit.",
  sep = "\n"
))


# > c) --------------------------------------------------------------------
inv(A)

# > D) --------------------------------------------------------------------
eigen(inv(A))


# Exercise 2.24  ----------------------------------------------------------
X_covariance_matrix <- matrix(c(4,0,0,0,9,0,0,0,1), 3, 3)

# > a) --------------------------------------------------------------------
inv(X_covariance_matrix)


# > b) --------------------------------------------------------------------
eigen(X_covariance_matrix)


# > c) --------------------------------------------------------------------
eigen(inv(X_covariance_matrix))

