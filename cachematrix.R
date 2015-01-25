## As it were asked in the assignment, file includes two functions makeCacheMatrix and cacheSolve

## makeCacheMatrix - creates a list of input matrix and functions get, set, getinv and setinv wich works just as in
## given example with vectors

makeCacheMatrix <- function(x = numeric()) {
        inv <- NULL
        set <- function(y){
                x <<- y
                inv <<- NULL # matrix()
        }
        get <- function() x
        setinv <- function(solve) inv <<- solve
        getinv <- function() inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)

}

## cachSolve - calculates and stores in cache matrix inverse to given

cacheSolve <- function(x, ...) {
        inv <- x$getinv()
        if (!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinv(inv)
        inv
        
        ## Return a matrix that is the inverse of 'x'
}
