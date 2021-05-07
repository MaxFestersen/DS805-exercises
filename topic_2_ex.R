# Exercise set 2 ----------------------------------------------------------

# > 2.25 -------------------------------------------------------------------
x.cov <- matrix(c(25, -2, 4,
           -2, 4, 1,
           4, 1, 9),
           nrow = 3,
           ncol = 3
           )
# >> a --------------------------------------------------------------------
# >>> Determine fancy p
Rho <- cov2cor(x.cov)

# >>> Determine V^½

V <- sqrt(x.cov)

# >> b ---------------------------------------------------------------------
# Multiply matrices and check relation (V^½)*p*(V^½) = E


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


# > 2.27 ------------------------------------------------------------------
# Derive expressions for the mean and variances of the following linear
# combinations in terms of the means and covariances of the random variables
# X_1, X_2 and X_3

# >> a  X_1 - 2X_2 ------------------------------------------------------------


# >> b -X_1 + 3X_2 ------------------------------------------------------------


# >> c X_1 + X_2 + X_3 --------------------------------------------------------


# >> e X_1 + 2X_2 - X_3 -------------------------------------------------------


# >> f 3X_1 - 4X_2 if X_1 and X_2 are independent random variables ------------



# > 2.41 ------------------------------------------------------------------
# You are given the random vector X' = [x_1, X_2, X_3, X_4] with mean vector
# µ'x =[3, 2, -2, 0] and variance_coveriance matrix
v.cov = matrix(c(3, 0, 0, 0,
           0, 3, 0, 0,
           0, 0, 3, 0,
	   0, 0, 0, 3),
           nrow = 4,
           ncol = 4
           )
# let
A = matrix(c(1, -1, 0, 0,
           1, 1, -2, 0,
           1, 1, 1, -3),
           nrow = 3,
           ncol = 4
           )
# >> a --------------------------------------------------------------------
# >>>Find E(AX), the mean of AX.

# >> b --------------------------------------------------------------------
# >>> Find Cov(AX, the variances and covariances of AX.

# >> c --------------------------------------------------------------------
# >>> Which pairs of linear combinations have zero coveriances?


# > 3.7 -------------------------------------------------------------------
# Sketch the solid elipsoids (x-x.hat)'*(S^-1)*(x-x.hat) <= 1

S.1 <- matrix(c(5,4, # Accutal name is S
                4,5),
              nrow = 2, ncol = 2)
S.2 <- matrix(c(5,-4, # Accutal name is S
                -4,5),
              nrow = 2, ncol = 2)
S.3 <- matrix(c(3,0, # Accutal name is S
                0,3),
              nrow = 2, ncol = 2)

# 3.8 Given ---------------------------------------------------------------

S <- matrix(c(1,0,0,0,1,0,0,0,1), nrow = 3)

S_ <- matrix(c(1,-1/2,-1/2,-1/2,1,-1/2,-1/2,-1/2,1), nrow = 3)


# > (a) Calculate the total sample variance for each S. Compare the results ------


# > (b) Calculate the generalized sample variance for each S, and  --------
# Comment on the discrepancies, if any, found between Parts a and b.


# > 3.11 ------------------------------------------------------------------
# Use the sample covariance obtained in Example 3.7 to verify (3-29) and (3-30),
# which state that R = D^(-1/2)SD^(-1/2) and D^(1/2)RD^(1/2) = S


# > 3.14 ------------------------------------------------------------------
X <- matrix(c(9,5,1, # From ex 3.1
            1,3,2),
            nrow = 3, ncol = 2)
n <- 3
p <- 2
# X1
# X2
# c'X = [-1,2]*[X1,X2] = X1 + 2X2
# b'X = [2,3]*[X1,X2]' = 2X1 + 3X2

# >> a --------------------------------------------------------------------
# >>>for c'X and b'X: Evaluate from first principle:
# Note: calculate c'X and b'X, then calculate the other stuff.
# >>>> The sample means

# >>>> The variances

# >>>> The covariances

# >> b --------------------------------------------------------------------
# >>>for c'X and b'X: calculate using 3-36:
# Note: se side 141 (pdf side 162)
# >>>> The sample means

# >>>> The variances

# >>>> The covariances

# >>> Compare results from a and b

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


