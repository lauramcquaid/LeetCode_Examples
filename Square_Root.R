#Given a non-negative integer x, compute and return the square root of x.
#Since the return type is an integer, the decimal digits are truncated, 
#and only the integer part of the result is returned.


square_root <- function(x){
  for(i in 1:(x-1)){
    if(x >= (i-1)*(i-1) & x < i*i){
      return(i-1)
    }
  }
}

#Example

n = 15
square_root(n)


