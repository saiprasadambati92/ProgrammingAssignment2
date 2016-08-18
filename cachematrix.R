## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inve <- NULL
        set <- function(b) {
                a <<- b
                inve <<- NULL
        }
        get <- function() a
        assigninveerse <- function(inveerse) inve <<- inveerse
        obtaininveerse <- function() inve
        list(set = set,
             get = get,
             assigninveerse = assigninveerse,
             obtaininveerse = obtaininveerse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}
