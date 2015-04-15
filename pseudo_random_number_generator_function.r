pseudo <- function(seed, n){
  x = numeric(n)
  m = 2^32
  x[1] <- (22695477 * seed + 1) %% m
  if(n>1){
    for(i in 2:n){
      x[i] <- (22695477 * x[i-1] + 1) %% m
    }
  }
  return(x/m)
}