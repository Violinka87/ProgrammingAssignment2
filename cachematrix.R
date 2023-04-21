## Two functions that create a "matrix" that can cache its reverse and also computes 
##its reverse

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  ##Set the matrix
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  #Get the matrix
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  ##Return the list
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(i)
  }
  ## Get the matrix from our object
  data <- x$get()
  ## Calculate the inverse 
  inv <- solve(data, ...)
  ## Set the inverse to the object
  x$setinverse(inv)
  ##Return the matrix
  inv
}