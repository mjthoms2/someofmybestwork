x <- runif(1000000)
hist(x)
xlag <- lag(ts(x),-1)
d <- data.frame(ts.union(ts(x),xlag))
d<-d[-c(1,1000001),]
names(d) <- c("x","xlag")
result <- lm(x ~ xlag, data=d)
summary(result)


ex <- -log(1-x)
ex2 <- rexp(1000000)
hist(ex)
hist(ex2)

nor <- cos(2*pi*x[1:500000])*sqrt(-2*log(x[500001:1000000]))
nor2 <-rnorm(500000)
hist(nor)
hist(nor2)
