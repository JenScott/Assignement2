## Put comments here that give an overall description of what your
## functions do

## Create a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
       im<-NULL
       x<<-x
       im<<-NULL

        get<-function() x
        inv<-function(solve) im<<-solve
        getinv<-function() im
        list(set=set,get=get,inv=inv,getinv=getinv)
        
}


## look for inverse in cache, calculate if not found

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        im<-x$getinv()
        if(!is.null(im)) {
        		message ("getting cached data")
        		return(m)
        }
        data<-x$get()
        im<-solve(data, ...)
        x$inv(im)
        im
}
