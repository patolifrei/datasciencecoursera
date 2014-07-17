## The code provides a solution for matrix inverse calculation with caching
## of the result.
## The matrix has to be provided in the "matrix object" makeCacheMatrix.
## The matrix inverse is calculated using the function cacheSolve.
##
## The initial value for the matrix inverse is NULL.
## Once the matrix inverse is either provided manually by setInverse or
## calculated by cacheSolve with a result not equal to NULL, any additional
## call to cacheSolve will provide the cached result and not recalculate the
## the matrix inverse!
## The functions do not check whether the matrix is invertible or not.

## This function creates a special matrix object that caches its inverse
## The matrix object is a list of 4 functions:
##   1. get: get the matrix
##   2. set: set the matrix
##   3. getInverse: get the matrix inverse
##   4. setInverse: set the matrix inverse
##
## Cache is implemented with the "<<-" operator.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setInverse <- function(solve) m <<- solve
    getInverse <- function() m
    list(set = set, get = get,
    setInverse = setInverse,
    getInverse = getInverse)
}


## The function cacheSolve calculates the matrix inverse and caches the result.
## Once a cached result is available, the function will return this cached result
## and not recalculate the matrix inverse.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    matrix <- x$get()
    m <- solve(matrix, ...)
    x$setInverse(m)
    m
}
