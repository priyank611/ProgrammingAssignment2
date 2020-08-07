## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(ys){
    x <<- y
    invmat <<- NULL
  }
  get <- function() {x}
  setInv <- function(inverse) {invmat <<- inverse}
  getInv <- function() {invmat}
  list(set = set, get = get, setInv = setInv, getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  invmat <- x$getInv()
  if(!is.null(invmat)){
    message("getting cached data")
    return(invmat)
  }
  mat <- x$get()
  invmat <- solve(mat, ...)
  x$setInv(invmat)
  invmat
        ## Return a matrix that is the inverse of 'x'
}
