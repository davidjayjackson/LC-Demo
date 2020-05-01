setwd("c:/grant/backup/books/lcurve/rprogram/examples")
####################
# load and plot data
####################
co2data = read.table("mloco2.dat")
t = co2data[,1]
x = co2data[,2]
plot(t,x,pch=".",cex=3,
    xlab="Time (years)",
    ylab="CO2 concentration (ppmv)",
    main="Mauna Loa",
    cex.axis=1.5,cex.lab=1.5,cex.main=2)
#########################################
# simplest model: linear function of time
#########################################
xfit = lm(x ~ t)
summary(xfit)
##########################
# superimpose linear model
##########################
lines(t,xfit$fitted.values,col="red",lwd=3)
################
# plot residuals
################
plot(t,xfit$residuals,pch=".",cex=3,
    xlab="Time (years)",
    ylab="Residuals (ppmv)",
    main="Mauna Loa",
    cex.axis=1.5,cex.lab=1.5,cex.main=2)
##############################
# quadratic model of residuals
##############################
tsquared = t^2
xfit2 = lm(xfit$res ~ t+tsquared)
summary(xfit2)
###########################
# superimpose model on data
###########################
lines(t,xfit2$fit,col="red",lwd=3)
#############################
# quadratic model of raw data
#############################
xfit3 = lm(x ~ t+tsquared)
summary(xfit3)
#################################
# plot data and superimpose model
#################################
plot(t,x,pch=".",cex=3,
    xlab="Time (years)",
    ylab="CO2 concentration (ppmv)",
    main="Mauna Loa",
    cex.axis=1.5,cex.lab=1.5,cex.main=2)
lines(t,xfit3$fit,col="red",lwd=3)
################
# plot residuals
################
plot(t,xfit3$resid,pch=".",cex=3,
    xlab="Time (years)",
    ylab="Residuals (ppmv)",
    main="Mauna Loa",
    cex.axis=1.5,cex.lab=1.5,cex.main=2)
######################
# residuals since 2000
######################
plot(t,xfit3$resid,type="o",pch=".",cex=3,
    xlim=c(2000,2010),
    xlab="Time (years)",
    ylab="Residuals (ppmv)",
    main="Mauna Loa",
    cex.axis=1.5,cex.lab=1.5,cex.main=2)
############################
# quadratic + sinusoid model
############################
c1 = cos(2*pi*t)
s1 = sin(2*pi*t)
xfit4 = lm(x ~ t+tsquared+c1+s1)
plot(t,x,pch=".",cex=3,
    xlab="Time (years)",
    ylab="CO2 concentration (ppmv)",
    main="Mauna Loa",
    cex.axis=1.5,cex.lab=1.5,cex.main=2)
lines(t,xfit4$fit,col="red",lwd=2)
####################
# closeup since 2000
####################
plot(t,x,pch=".",cex=3,
    xlim=c(2000,2010),
    ylim=c(365,390),
    xlab="Time (years)",
    ylab="CO2 concentration (ppmv)",
    main="Mauna Loa",
    cex.axis=1.5,cex.lab=1.5,cex.main=2)
lines(t,xfit4$fit,col="red",lwd=2)
##################################
# quadratic + sinusoid w/harmonics
##################################
c2 = cos(4*pi*t)
s2 = sin(4*pi*t)
c3 = cos(6*pi*t)
s3 = sin(6*pi*t)
xfit5 = lm(x ~ t+tsquared+c1+s1+c2+s2+c3+s3)
plot(t,x,pch=".",cex=3,
    xlim=c(2000,2010),
    ylim=c(365,390),
    xlab="Time (years)",
    ylab="CO2 concentration (ppmv)",
    main="Mauna Loa",
    cex.axis=1.5,cex.lab=1.5,cex.main=2)
lines(t,xfit5$fit,col="red",lwd=2)
###########
# residuals
###########
plot(t,xfit5$resid,type="o",pch=".",cex=3,
    xlab="Time (years)",
    ylab="Residuals (ppmv)",
    main="Mauna Loa",
    cex.axis=1.5,cex.lab=1.5,cex.main=2)
