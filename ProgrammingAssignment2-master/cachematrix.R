##At First we write a function that create a list of 4 functions, which checks if our
## calculated value is alrady in the cache or not

makeCacheMatrix <- function(x = matrix()) {
  s<-NULL
  set<-function(y){
    x<<-y
    s<<-NULL
}
  get<-function() x
  setsolve<-function(solve)s<-solve
  getsolve<-function() s
  list(set=set,get=get,
  setsolve=setsolve,
  getsolve=getsolve)
}


## This function calculate a inverse matrix with function solve

cacheSolve <- function(x, ...) {
  s<-x$getsolve()
  if(!is.null(s)){## Checking value in cache from previous function
    message("getting cached data")
    return (s)
  }
  data<-x$get()
  s<-solve(data,...)
  x$setsolve(s)
  s
}
