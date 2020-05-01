setwd("c:/grant/backup/books/lcurve/rprogram/examples")
mira = read.table("mira1.dat")
t = mira[,1]
x = mira[,2]
plot(t,x)
plot(t,x,ylim=c(10,2))
plot(t,x,ylim=c(10,2),pch=20)
plot(t,x,ylim=c(10,2),pch=20,xlab="Time",
    ylab="Magnitude",cex.lab=1.5,cex.axis=1.5)
