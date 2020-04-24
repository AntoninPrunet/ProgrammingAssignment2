## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function creates a list with four function imputs. First one sets the matrix data (the
## imput gives us the matrix value). Second one gets the matrix data. Third, it sets its inverse
## and fourth function gets the inverse of the matrix.
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y){
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) inv<<-solve
    getinverse <- function() inv
    list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


## Write a short comment describing this function
##This function enables us to retrieve the matrix data and check if the inverse
##is already computed, if so, get it back, if not compute it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinverse()
    if (!is.null(inv)){
        message("getting catched data")
        return(inv)
    }
    matrix <- x$get()
    inv <- solve(matrix)
    x$setinverse(inv)
    inv
}
