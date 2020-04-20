## Put comments here that give an overall description of what your
## functions do
#It should do exactly what the assignment said it should do :). 
## Write a short comment describing this function
#this function produces a matrix that can be inverted. 

makeCacheMatrix <- function(x = matrix()) {
    s <- NULL
    set <- function(y) {
        x <<- y
        s <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) s <<- inverse
    getinverse <- function() s
    list(set = set,get = get,setinverse = setinverse,getinverse = getinverse)
}


## Write a short comment describing this function
#this function either pulls up the inverted matrix from the cache or inverts it if this has not been done yet.
       
    cacheSolve<-function(x,...){
        ## Return a matrix that is the inverse of 'x' 
        s<-x$getinverse()
        if(!is.null(s)){
            message ("getting cached data")
            return (s)
        }
        data<-x$get()
        s<- solve(data,...)
        x$setinverse(s)
        return(s)
    }
