## Put comments here that give an overall description of what your
## functions do

<<<<<<< HEAD
## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  
  invMatrix <- NULL
  
  set <- function(y = matrix()){
    x <<- y
    invMatrix <<- NULL
  }
  
  get <- function(){
    return(x)
  }
  
  setInvMatrix <- function(i){
    invMatrix <<- i
  }
  
  getInvMatrix <- function(){
    return(invMatrix)
  }
  
  list(set = set, get = get, setInvMatrix = setInvMatrix, getInvMatrix = getInvMatrix)
  
}


## This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then cacheSolve should retrieve the inverse
## from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  invMatrix <- x$getInvMatrix()
  
  if(!is.null(invMatrix)){
    message("getting cached data")
    return(invMatrix)
  }
  
  data <- x$get()
  invMatrix <- solve(data, ...)
  x$setInvMatrix(invMatrix)
  return(invMatrix)
  
}
=======
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
