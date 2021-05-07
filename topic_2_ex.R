# Exercise set 2 ----------------------------------------------------------



# 2.30  -------------------------------------------------------------------

# You are given the random vector X' = [x_1, x_2, x_3, x_4] 
# with mean vector µ'x = [4,3,2,1]

var_cov_var <- matrix(c(3, 0, 2, 2, 0, 1, 1, 0, 2, 1, 9, -2, 2, 0, -2, 4), nrow = 4)

# Partition X as [x_1, x_2] = [X¹], [x_3, x_4] = [x²]

# Let

A <- c(1,2)
B <- matrix(c(1, 2, -2, -1), nrow = 2)

# and consider the linear combinations AX¹ and BX². Find:


# (a) E(X^1) --------------------------------------------------------------


# E(AX^1) -----------------------------------------------------------------


# Cov(X^1) ----------------------------------------------------------------



# Cov(AX^1) ---------------------------------------------------------------


# E(X^2) ------------------------------------------------------------------


# E(BX^2) -----------------------------------------------------------------


# Cov(X^2) ----------------------------------------------------------------


# Cov(BX^2) ---------------------------------------------------------------


# Cov(X^1, X^2) -----------------------------------------------------------


# Cov(AX^1, BX^2) ---------------------------------------------------------



# 3.8 Given ---------------------------------------------------------------

S <- matrix(c(1,0,0,0,1,0,0,0,1), nrow = 3)

S_ <- matrix(c(1,-1/2,-1/2,-1/2,1,-1/2,-1/2,-1/2,1), nrow = 3)


# > (a) Calculate the total sample variance for each S. Compare the results ------


# > (b) Calculate the generalized sample variance for each S, and  --------
# Comment on the discrepancies, if any, found between Parts a and b.



# 3.18 Energy consumption in 2001, by state, from the major sources -------


# x_1 = petroleum, x_2 = natural gas, x_3 hydroelectric power, x_4 = nuclear electric power
# is recorded in quadrillions (10^15) of BTUs.
# The resulting mean and covariance matrix are:

mu <- c(0.766, 0.508, 0.438, 0.161)

S <- matrix(c(0.856, 0.635, 0.173, 0.096, 0.635, 0.568, 0.127, 0.067, 0.173, 0.128, 0.171, 0.039, 0.096, 0.067, 0.039, 0.043), nrow = 4)


# > (a) Using the summary statistics, determine the sample mean --------
# and variance of a state's total energy consumption for these major sources.


# > (b) Determine the sample mean and variance of the excess of --------
# petroleum consumption over natural gas consumption. Also find the sample 
# covariance of this variable with the total variable in part a.


