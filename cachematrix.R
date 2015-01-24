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
    setinv <- function(solve) mat <<- solve
    getinv <- function () mat
    list(set = set, get = get, 
         setinv = setinv,
         getinv = getinv)
        
}


## Cache the inverse of a function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      mat <- x$getinv()
      if(!is.null(mat)){
          message("getting cached matrix")
          return(mat)
      }
      ## comparing matrix to inverse return inverse
      mdata <- x$get()
      mat <- solve(mdata, ...)
      x$setinv(mat)
      mat
}

