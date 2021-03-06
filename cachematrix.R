## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){ #creating a function under parent function
  x <<- y   # assigning values of matrix x to y under child function
  inv <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) {inv <<- inverse} # defining the inverse for the matrix
  getInverse <- function() {inv}  # calling the inverse function
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse) #generating a list to store multiple methods

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...) 
  x$setInverse(inv)  
  inv## Return a matrix that is the inverse of 'x'
}
