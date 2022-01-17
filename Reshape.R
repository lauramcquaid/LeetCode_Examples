#In MATLAB, there is a handy function called reshape which can reshape an m x n matrix into a new one
#with a different size r x c keeping its original data.

#You are given an m x n matrix mat and two integers r and c representing the number of rows and the number
#of columns of the wanted reshaped matrix.

#The reshaped matrix should be filled with all the elements of the original matrix in the same row-traversing 
#order as they were.

#If the reshape operation with given parameters is possible and legal, output the new reshaped matrix;
#Otherwise, output the original matrix.


reshape <- function(x, r, c){
  input_vector = as.vector(t(x))
  output_matrix = matrix(input_vector,  nrow = r, ncol = c, byrow = TRUE)
  if(r*c == length(input_vector)){
    return(output_matrix)
  }
  else{
    return(x)
  }
}

#Example 

input = matrix(c(1,2,3,4), nrow = 2, ncol = 2, byrow = TRUE)
reshape(x = input,r = 1, c = 4)

