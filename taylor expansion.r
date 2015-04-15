taylorexp <- function(x,n){
  r=numeric(length(x))+1
  for(i in 1:n){
    r = r + (x^i)/factorial(i)
  }
  return(r)
}
x<-1:10000
x<-x/5000-1
y <- exp(x)
ytaylor <- taylorexp(x,2) 
plot(c(x,x),c(y,ytaylor))
max(y-taylorexp(x,2))
max(y-taylorexp(x,3))
max(y-taylorexp(x,20))
    
