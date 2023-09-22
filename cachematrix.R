## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
         ##Set the vector's value
   m <- NULL
  set <- function(y) {
    x <<- y   ##the double arrow assigns a value from a different environment
    m <<- NULL
  }
  ##get the vector's value
    get <- function() X
  ##set the inverse's value
    setInverse <- function(inverse) m <<- inverse
  ##get the inverse's value
     getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ##checks to see if the inverse has already been calculated
  m <- x$getInverse()
  ##if inverse is calculated, gets it from cache and skips computation
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
 ##calculates inverse of the matrix
   mat <- x$get()
  m <- solve(mat,...)
 ##sets the inversed values in the cache
   x$setInverse(m)

##Prints the matrix to the console
  return(m)
}

