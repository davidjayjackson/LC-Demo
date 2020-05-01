setwd("c:/grant/backup/books/lcurve/rprogram/examples")
mira = read.table("mira.10d")
t = mira[,1]
x = mira[,2]
###########################
# just the data since 50000
###########################
n1 = findstart(t,50000)
n2 = length(t)
t = t[n1:n2]
x = x[n1:n2]
plot(t,x)
plot(t,x,ylim=c(10,2))
plot(t,x,ylim=c(10,2),pch=20)
plot(t,x,pch=20,
    ylim=c(max(x),min(x)),
    xlab="Time",ylab="Magnitude",main="Mira",
    cex.lab=1.5,cex.axis=1.5,cex.main=2.5)
plot(t,x,type="o",pch=20,
    ylim=c(max(x),min(x)),
    xlab="Time",ylab="Magnitude",main="Mira",
    cex.lab=1.5,cex.axis=1.5,cex.main=2.5)
plot(t,x,type="l",
    ylim=c(max(x),min(x)),
    xlab="Time",ylab="Magnitude",main="Mira",
    cex.lab=1.5,cex.axis=1.5,cex.main=2.5)
#################
# AoV periodogram
#################
ap = aovper(t,x)
########################
# identify all the peaks
########################
pp = peaks(ap)
#######################
# display the 1st three
#######################
pp[1:3,]
##################################
# identify just the strongest peak
##################################
pk1 = peak1(ap); pk1
period = pk1$per; period
###################
# DCDFT periodogram
###################
dc = dcdft(t,x,0,.01)
###################################
# identify all peaks, display top 3
###################################
pp = peaks(dc)
pp[1:3,]
################
# strongest peak
################
peak1(dc)
#####################################
# strongest peak with standard errors
# for frequency and amplitude
#####################################
peak1(dc,t,x)
############################
# DCDFT closeup of main peak
############################
dc2 = dcdft(t,x,.0025,.0035)
#############################
# DCDFT closeup of main peak
# with 5x enhanced resolution
#############################
dc2 = dcdft(t,x,.0025,.0035,resmag=5)
pk1 = peak1(dc2,t,x); pk1
period = pk1$per
xfit = fourfit(t,x,period)
plot(t,x,type="o",pch=20,
    xlim=c(50000,54500),ylim=c(max(x),min(x)),
    xlab="Time",ylab="Magnitude",main="Mira",
    cex.lab=1.5,cex.axis=1.5,cex.main=2.5)
lines(t,xfit$fit,col="red",lwd=3)
#############################
# folded light curve for Mira
#############################
fold = foldit(t,x,period)
fold = foldit(t,x,period,epoch=40160)
abline(v=0)
