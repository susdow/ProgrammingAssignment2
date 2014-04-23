## Put comments here that give an overall description of what your
## functions do

## Getting and caching the matrix inverse

makeCacheMatrix<-function(x=matrix()){
  inverseM<-NULL
  set<-function(y){
    x<<-y
    inverseM<<-NULL
  }
  get<-function() x
  setinverse<-function(inverse)
    inverseM<<-inverse
  getinverse<-function() inverseM
  list(set-set,get=get,
       setinverse=setinverse,
       getinverse=getinverse
  )
}

## Return the matrix inverse

cacheSolve<-function(x,...){
  inverseM<-x$getinverse()
  if(!is.null(inverseM)){
    return(inverseM)
  }else{
    inverseM<-solve(x$get())
    x$setinverse(inverseM)
    return(inverseM)
  }
}
