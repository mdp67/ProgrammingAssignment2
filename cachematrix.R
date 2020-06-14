## Put comments here that give an overall description of what your
## functions do

## function takes a matrix and returns a list that acts as an object containing
## getter, setter fucnctions 

makeCacheMatrix <- function(x = matrix()) {
    inver <- NULL
    getMatrix <- function() {
        x
    }
    setMatrix <- function(newMatrix) {
        x <<- newMatrix
        inver <<- NULL
    }
    getInverse <- function() {
        inver
    }
    setInverse <- function(inverse) {
        inver <<- inverse
        
    }
    list(getMatrix = getMatrix,
         setMatrix = setMatrix,
         getInverse = getInverse,
         setInverse = setInverse)
}


## creates a cache for the inverse of a matrix, or returns the cached inverse

cacheSolve <- function(x, ...) {
    cachedInverse <- x$getInverse()
    if  (!is.null(cachedInverse)) {
        return(cachedInverse)
    }
    matrixFromX <- x$getMatrix()
    invertedMatrix <- solve(matrixFromX)
    x$setInverse(invertedMatrix)
}
