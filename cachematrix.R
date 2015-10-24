## These functions will cache the inverse of a created matrix.

## This function creates a matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
 m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}


## This function computes the inverse of the matrix returned by the above function.

cacheSolve <- function(x, ...) {
     m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data...")
    return(m)
  }
  data<-x$get()
  m<-solve(data, ...)
  x$setmatrix(m)
  m
}
