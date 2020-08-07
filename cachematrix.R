## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    invmat <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) {invmat <<- inverse}
  getInverse <- function() {invmat}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  invmat <- x$getInverse()
  if(!is.null(invmat)){
    message("getting cached data")
    return(invmat)
  }
  mat <- x$get()
  invmat <- solve(mat, ...)
  x$setInverse(invmat)
  invmat
        ## Return a matrix that is the inverse of 'x'
}
