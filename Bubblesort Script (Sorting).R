# bubblesort(v) sorts the vector in ascending order
# v: a vector of numeric numbers
# return value: returns a vector sorted in ascending order


bubblesort <- function(v) {     # Define bubblesort function
  n <- length(v)                # Define n to be the length(v)
  swap=TRUE                     
  while(swap) {                 # Start "while" loop to repeat as long as swap=TRUE
    swap <- FALSE
    for(i in 1:(n-1)) {         # "for" loop to cycle through elements in vector
      if (v[i]>v[i+1]) { 
        holder <- v[i]
        v[i] <- v[i+1]
        v[i+1] <- holder        # switches elements if next element is greater in value
        swap <- TRUE
      }                         # when no switches are made swap <- FALSE and while loop ends
    }
  }
return(v)
}

v <- rnorm(5000)
bubblesort(v) 
v2 <- 1:5000
v2[10] <- -4
v2[4900] <- 20000
bubblesort(v2)


sort(v, decreasing=FALSE)     # the built in sort function is a lot quicker than using bubblesort.