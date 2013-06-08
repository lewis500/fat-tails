n <- 100000
fat.tail <- function (p, a) {
  b  <- sqrt((1-p*a^2)/(1-p))
  y  <- rbern(n, p)
  z  <- rnorm(n, 0, 1)
  X  <- mat.or.vec(n,1)
  for(i in 1:n){
    if(y[i] == 1){
      X[i] <- a*z[i]
    }else{
      X[i]  <- b*z[i]
    }
  }
  return(X)
}

t  <- fat.tail(.5, 1)
u <- fat.tail(.5, .55)
v <- fat.tail(.5, .30)

labels <- c(rep("1",n),rep(".55", n), rep(".40", n))
data <- data.frame(beta=c(t, u, v), method=labels)
ggplot(data, aes(x=beta, color=method)) +
 geom_density(alpha=0.5, adjust=5 ) #+
#    coord_cartesian(xlim=c(2.5, 4.5), ylim=c(0,.05))

kurtosis(t)
kurtosis(u)
kurtosis(v)
var(u)
var(v)
var(t)







