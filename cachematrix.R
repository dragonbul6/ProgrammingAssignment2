## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- funtion(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function(){
    x
  }
  
  list(set = set,get = get)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  if ((ncol(x) >= 4) | (nrow(x) >= 4)) {
    stop('Matrix is not 2x2 or 3x3')
  }
  
  dimm <- c(nrow(x),ncol(x))
  inverse_value <- matrix()
  if(dimm[1] == 2 && dimm[2] == 2){
    
    if(detx == 0){
      stop('Determinant of matrix equals 0, no inverse exists')
    }
    
    if(ncol(A) == 1){
      stop("vector")
    }

    inverse_value <- solve(x)
  }
  if(dimm[1] == 3 && dimm[2] == 3){
    detx <- det(x)
    if (detx == 0) {
      stop('singular matrix')
    }
    
    ##find inverse
    inverse_value <- solve(x)
  
    
  }
  
  return(inverse_value)
  
  
}
