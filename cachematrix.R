
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  get<-function()x
  setInverse<-function(inverse) inv<<-solve(x) #calculate inverse
  getInverse<-function()inv
  list(set=set,
       get=get,
       setInverse=setInverse,
       getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv<-x$getinverse()
  if(!is.null(inv)){
    message("getting catched data")
    return(inv)
  }
  mat<-x$get()
  inv<-solve(mat, ...)
  x$setInverse(inv)
  inv
}

