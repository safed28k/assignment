## In this task we are supposed to create a set of functions to cache the inverse meanings of a matrix.
## So, in our programm we use two functions: "makeCacheMatrix" function and "cacheSolve" function to perfom that task 

## makeCacheMatrix function: here we create the matrix objects using function "makeCacheMatrix". 
## In its turn the function comprises four functions: set, get, setinverse and getinverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set,
       get=get,
       setinverse=setinverse,
       getinverse=getinverse)
}

## If matrix is invertable, the following function "cacheSolve" is supposed to give back its inverse meanings 

cacheSolve <- function(x, ...) {
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