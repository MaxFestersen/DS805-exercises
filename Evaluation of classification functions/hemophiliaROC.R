example <- read.table("t11-8.txt",header=TRUE)

plot(example$x1,example$x2,pch=example$y,xlab="log10(AHF activity)",ylab="log10(AHF-like antigen)")

#
# linear discriminant analysis using LDA
#

library(MASS)

result <- lda(y~x1+x2,example,prior=c(.5,.5))
examplex <- example[,c(2,3)]
pr <- predict(result,examplex)

y <- example$y
yhat <- pr$class

#
# confusion matrix for learning sample prediction
#

table(y,yhat)

#
# ROC curve
#

library(ROCR)
pplda <- pr$posterior[,2]

pred <- prediction(pplda,y)
perf <- performance(pred,"tpr","fpr")
plot(perf,colorize=TRUE,lwd=3)

#
# Area under ROC curve
#

perf <- performance(pred,"auc")
perf

aucvalue1 <- as.numeric(perf@y.values)

#
# APER as a function of cutoff value
#

perf <- performance(pred,"err")
plot(perf,ylim=c(0,1))

#
# Cross-validation confusion matrix, i.e. holdout procedure
#

result <- lda(y~x1+x2,example,prior=c(.5,.5),CV=TRUE)

yhatcv <- result$class
table(y,yhatcv)

#
# Cross-validation (with holdout) ROC curve
#

pplda <- result$posterior[,2]

pred <- prediction(pplda,y)
perf <- performance(pred,"tpr","fpr")
plot(perf,colorize=TRUE,lwd=3)

#
# Area under ROC curve
#

perf <- performance(pred,"auc")
perf
aucvalue2 <- as.numeric(perf@y.values)
#
#  Cross-validation error as a function of cutoff value
#

perf <- performance(pred,"err")
plot(perf,ylim=c(0,1))


