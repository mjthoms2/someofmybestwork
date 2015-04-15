#Example 1
r = runif(10000)
fr = r*2+1
If = mean(fr)
serror = sd(fr)/sqrt(10000)
ci = c(If+qnorm(0.025)*serror,If+qnorm(0.975)*serror)

#Example 2
nr = dnorm(r)
If = mean(nr)
serror = sd(nr)/sqrt(10000)
pnorm(1)-pnorm(0)

#Example 3
r = runif(10000,0,2)
fr = 2*(r*2+1)
If = mean(fr)
serror = sd(fr)/sqrt(10000)

#Example 4:  EV and variance standard normal
r=runif(10000,-10,10)
fr = 20*r*dnorm(r)
If = mean(fr)
serror = sd(fr)/sqrt(10000)

r2=rnorm(10000)
If2 = mean(r2)
serror2 = sd(r2)/sqrt(10000)

r=runif(10000,-10,10)
fr = 20*r*r*dnorm(r)
If = mean(fr)
serror = sd(fr)/sqrt(10000)

r2=rnorm(10000)
If2 = mean(r2*r2)
serror2 = sd(r2)/sqrt(10000)



#Example 5:  integrating normal pdf with importance sampling
r=runif(10000,-10,10)
fr = 20*dnorm(r)
If = mean(fr)
serror = sd(fr)/sqrt(10000)

r2=rlogis(10000)
fr2 = dnorm(r2)/dlogis(r2)
If2 = mean(fr2)
serror2 = sd(fr2)/sqrt(10000)


#Example 6:  integrating Laplace distribution
r=runif(10000,-10,10)
fr = 20*0.5*exp(-abs(r))
If = mean(fr)
serror = sd(fr)/sqrt(10000)

r2=rnorm(10000)
fr2 = 0.5*exp(-abs(r2))/dnorm(r2)
If2 = mean(fr2)
serror2 = sd(fr2)/sqrt(10000)

#Example 7:  integrating logistic pdf with importance sampling
r=runif(10000,-10,10)
fr = 20*dlogis(r)
If = mean(fr)
serror = sd(fr)/sqrt(10000)

r2=rnorm(10000)
fr2 = dlogis(r2)/dnorm(r2)
If2 = mean(fr2)
serror2 = sd(fr2)/sqrt(10000)




