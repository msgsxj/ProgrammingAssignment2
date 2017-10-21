## Put comments here that give an overall description of what your
## functions do

## the function can receive a matrix and return a list includes four elements
## set get setinv getinv

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(inv) m <<- inv
        getinv <- function() m
        list(set = set, get = get,
             setinv = setmean,
             getinv = getmean)

}


## this function can get the inverse of the matrix A (for example)
## and if cacheSlove(A) was implemented before ,it will renturn the 
## already cached value. obviously, it can save time 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        m
}