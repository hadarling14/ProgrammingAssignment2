## Put comments here that give an overall description of what your
## functions do
## the first function creates the inverse of the matrix and stores it.
## the second function checks to see if there is a stored matrix, if not it will make one. 
## If there is a cached matrix, it will fetch it and use that matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
}
