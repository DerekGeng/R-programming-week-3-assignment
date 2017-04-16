## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


## Derek Geng 16-4-2017
## Create a special matrix object that can cache its inverse
makeCacheMatrix <- function(m = matrix()) {
        
        ## creat an inverse property
        i <- NULL
        
        ## set matrix
        set <- function(y){
                m <<- matrix
                i <<- NULL
                
        }
        
        ## get matrix
        get <- function() {
                ## return matrix
                m
        }
        
        ## set the inverse of the matrix
        setInverse <- function(inverse){
                i <<- inverrse
        }
        
        ## get the inverse of the matrix
        getInverse <- function(){
                i
        }
        
        ## Return the list
        list(set=set, get= get,
             setInverse=setInverse,
             getInverse=getInverse)

}


## compute the inverse of the special matrix returned bt makeCacheMatrix above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        
        ## return the inverse if is set
        if (!is.null(m)){
                message("getting cached data")
                return(m)
        }
        
        ## get the matrix
        data <- x$get()
        
        ## calculate
        m <- solve(data)
        
        ## return the matrix
        m
        
}
