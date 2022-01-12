#You are given a large integer represented as an integer array digits, where each digits[i]
#is the ith digit of the integer. The digits are ordered from most significant to least
#significant in left-to-right order. The large integer does not contain any leading 0's.
#Increment the large integer by one and return the resulting array of digits.

plus_one <- function(x){
  y = x
  if(y[length(y)]==9){
    y[length(y)]=10
    for (i in length(x):1) {
      if(y[i]==10){
        y[i] = 0
        y[i-1] = y[i-1] + 1
      }
    }
  } else{
    y[length(y)] = y[length(y)] + 1
  }
  if(sum(x==9)==length(x)){
    y = c(1,rep(0,length(x)))
  }
  return(y)
}

#Example
x = c(9,9,9)
plus_one(x)