## Put comments here that give an overall description of what your
## functions do

## This function will set, get ,setinverse and getinverse of the function

makeCacheMatrix <- function(x = matrix()) {
  im <- NULL
  set <- function(y) {
    x <<- y
    im <<- NULL
  }
  get <- function() x
  setinverse <- function(inversematrix) im <<- inversematrix
  getinverse <- function() im
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


##This function will check if inverse of the matrix is available in Cache.If not will find the inverse and set the inverse in the environment (Lexical Scoping)



cacheSolve <- function(x, ...) {
  
  im <- x$getinverse()
  if(!is.null(im)) {
    message("getting cached data")
    return(im)
  }
  data <- x$get()
  im <- solve(data, ...)
  x$setinverse(im)
  im
  

        ## Return a matrix that is the inverse of 'x'
}
