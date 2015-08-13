
## This function creates a special "matrix" object that can cache its inverse.
## The function assumes that the matrix supplied is always invertible.
makeCacheMatrix <- function(x = matrix()) {

}


## This function computes the inverse of the special "matrix" returned by 
## the makeCacheMatrix function. If the inverse has already been calculated 
## (and the matrix has not changed), then the cachesolve should retrieve the
## inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
