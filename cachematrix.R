## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##
## Let's pretend please that this is useful commentary
## Srsly, function is selfexplanatory 
## And there is some stuff in Readme.md
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) {
                m <<- solve
        }
        getsolve <- function() m
        list(set=set, get=get, setsolve=setsolve, getsolve= getsolve)
}


## Write a short comment describing this function
## I just want to sleep
## So now both functions are documented, k?

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached solution")
                print(m)
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setsolve(m)
        print(m)
}
