#Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
#You must implement a solution with a linear runtime complexity and use only constant extra space.

single_number <- function(x){
  as.vector(which(table(x)!=2))
}


#Example 

x = c(1,2,1,2,3,4,4,5,5,3,3,3,3,6,7,6,7)
single_number(x)


