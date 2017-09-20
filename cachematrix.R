## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This is a caching method for matrix inverse calculation
# set method for setting the original value of the matrix
# get method for getting the original value of the matrix
# set_I method for setting the inverse of the matrix
# get_I method for getting the inverse of the matrix
# this method will return a vector involves these 4 methods
makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  
  set <- function(input) {
    x <<- input
    m <<- NULL
  }
  
  get <- function() {
    x
  }
  
  set_I <- function(inverse) {
    m <<- inverse
  }
  
  get_I <- function() {
    m
  }
  
  list(set = set, get = get, set_I = set_I, get_I = get_I)
}


## Write a short comment describing this function
# This method will return the inverse of the input x
# it will calculate the inverse of x if it has not been cached
# it will directly return inverse value if it has been cached
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$get_I()
  
  # Check if the inverse exists
  if (is.null(i_value)) {
    message("calculating the inverse")
    
    data <- x$get()
    m <- solve(data)
    x$set_I(m)
  } else {
    message("the inverse already exists")
  }
  
  m
}
