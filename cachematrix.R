## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##One make a matrix, an inverse and then solve the inverse 

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInv <- function() {inv}
  list(set = set, get = get, setInverse = setInverse, getInv = getInv)
}




## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setInverse(inv)
  inv
}
