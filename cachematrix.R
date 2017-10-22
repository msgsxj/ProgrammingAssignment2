## Put comments here that give an overall description of what your
## functions do

## the function can receive a matrix and return a list includes four elements
## set get setinv getinv

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(m) inv <<- m
        getinv <- function() inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## this function can get the inverse of the matrix A (for example)
## and if cacheSlove(A) was implemented before ,it will renturn the 
## already cached value. obviously, it can save time 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinv(inv)
        inv
}