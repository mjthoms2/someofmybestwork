set.seed(1000)
threshold = 4
num=100
iter=500

calcindex <- function(x,y){
  even=integer(num*2)
  odd=integer(num*2)
  for(i in 1:(num*2)){
    even[i]=1-i%%2
    odd[i]=i%%2
  }
  
  q1e=sum(even*as.integer((x<0.5)&(y<0.5)))
  q2e=sum(even*as.integer((x>0.5)&(y<0.5)))
  q3e=sum(even*as.integer((x<0.5)&(y>0.5)))
  q4e=sum(even*as.integer((x>0.5)&(y>0.5)))
  
  q1o=sum(odd*as.integer((x<0.5)&(y<0.5)))
  q2o=sum(odd*as.integer((x>0.5)&(y<0.5)))
  q3o=sum(odd*as.integer((x<0.5)&(y>0.5)))
  q4o=sum(odd*as.integer((x>0.5)&(y>0.5)))
  
  r = 0.5*(abs(q1e/num-q1o/num)+abs(q2e/num-q2o/num)+abs(q3e/num-q3o/num)+abs(q4e/num-q4o/num))
  
  return(r)
  
}

