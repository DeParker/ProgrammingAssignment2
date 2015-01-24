## Programming Assignment 2
## Caching the inverse of Matrix

## This function creates a special "matrix" object
## that caches the inverse of a matrix
## need to set value of matrix, get value of matrix
## set value of inverse and get value of inverse

makeCacheMatrix <- function(x = matrix()) {
      ##Not sure this is the correct way to create a matrix
    mat <- NULL
    set <- function(y) {
        x <<- y
        mat <<- NULL
    }
    get <- function () x
    ## set matrix to a inverse matrix 
    setmat <- function(solve) mat <<- solve
    getmat <- function () mat
    list(set = set, get = get, 
         setmat = setmat,
         getmat = getmat)
        
}


## Cache the inverse of a function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      mat <- x$getmat()
      if(!is.null(mat)){
          message("getting cached matrix")
          return(mat)
      }
      mdata <- x$get()
      mat <- solve(mdata, ...)
      x$setmat(mat)
      mat
}

