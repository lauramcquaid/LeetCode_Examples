#Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to
#target. You may assume that each input would have exactly one solution, and you may not use the same element twice.
#You can return the answer in any order.


two_sum <- function(int_array, target){
x = int_array[-length(int_array)]
y = int_array[-1]
for (i in 1:length(x)) {
  for (j in 1:length(y)) {
    if(x[i] + y[j] == target){
      return(c(i, j+1, target))
    }
  }
}
}

array_try = c(3,3,8,1,7)
target_try = 15

two_sum(array_try, target_try)
