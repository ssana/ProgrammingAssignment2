## Put comments here that give an overall description of what your
## functions do

## There are two functions makeCacheMatrix and cacheSolve
## makeCacheMatrix - Takes matrix as input and returns a list of functions
## cacheSolve - Takes a list as input and returns inverse of matrix created by makeCacheMatrix as output

## Write a short comment describing this function

## makeCacheMatrix function
## Takes a matrix as input
## creates 4 functions set, get, setinverse, getinverse
## set the value of the matrix
## get the value of the matrix
## set the inverse of the matrix
## get the inverse of the matrix
## returns a list containing the above functions

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
## cacheSolve function
## Takes a list returned by makeCacheMatrix
## Returns inverse of matrix
##    cached entry if present
##    else calculates the inverse of matrix, caches it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
