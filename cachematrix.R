
## This function creates a special "matrix" object that can cache its inverse.
## The function assumes that the matrix supplied is always invertible.
makeCacheMatrix <- function(x = matrix()) {
    #initialize the inverse to NULL
    invrs <- NULL
    
    #standard get function
    get <- function() x
    
    #set the variables - up one level
    set <- function(y) {
        x <<- y
        invrs <<- NULL
    }
    
    #get function for the inverse
    getInverse <- function() invrs
    
    #set function for the inverse
    setInverse <- function(i) invrs <<- i
    
    list(set = set, get = get,
         getInverse = getInverse,
         setInverse = setInverse)
}


## This function computes the inverse of the special "matrix" returned by 
## the makeCacheMatrix function. If the inverse has already been calculated 
## (and the matrix has not changed), then the cachesolve should retrieve the
## inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getInverse()
    
    #If the inverse already exists, then return it
    if(!is.null(i)) {
        message("Retrieving cached inverse")
        return(i)
    }
    #need to get the matrix
    data<-x$get()
    
    #use the solve function to create the inverse
    i <- solve(data)
    #set/cache the inverse
    x$setInverse(i)
    #return the inverse
    i
}
