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

# this function used to get cache matrix or cache data

cacheSolve <- function(x, ...) {              ## gets cache data 
  i <- x$getinverse()
  if (!is.null(i)) {                        ## checking whether inverse is null
    message("getting cached data")
    return(i)                               ## returns inverse value 
  }
  data <- x$get()
  i <- solve(data, ...)                     ## calculate inverse value 
  x$setinverse(i)
  i
}
