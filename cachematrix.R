## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL                       # initializing inverse as NULL 
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x             # function to get matrix x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i            # function for obtaining inverse of matrix 
  
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
