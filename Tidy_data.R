theta <- seq(0,1,.001)
dens <- dbeta(theta,651,350.67)
cond <- dens/max(dens) > 0.001
plot (theta[cond], dens[cond],
      type="l", xlab="theta", ylab="", xaxs="i",
      yaxs="i", yaxt="n", bty="n", cex=2)

theta <- seq(0,1,.001)
dens <- dbeta(theta,1,.67)
plot (theta, dens, xlim=c(0,1), ylim=c(0,3),
      type="l", xlab="theta", ylab="", xaxs="i",
      yaxs="i", yaxt="n", bty="n", cex=2)
lines (c(1,1),c(0,3),col=0)
lines (c(1,1),c(0,3),lty=3)

y <- seq(-7,10,.02)
dens <- 0.5*dnorm(y,1,2) + 0.5*dnorm(y,2,2)
plot (y, dens, ylim=c(0,1.1*max(dens)),
      type="l", xlab="y", ylab="", xaxs="i",
      yaxs="i", yaxt="n", bty="n", cex=2)

?curve