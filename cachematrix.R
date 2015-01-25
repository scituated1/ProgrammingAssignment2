## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix creates a special "vector", which is
## a list containing a function to

##  1.  set the value of the matrix and reset the cached inverse to Null
##  2.  get the values from the cache
##  3.  cache the value of the inverse of the matrix
##  4.  get the cached value--

## - not working - initial call does not make m or curr-matrix available.  
##not sure what is diff from the sample


makeCacheMatrix <- function(x = matrix()) {
        
                
                m <<- NULL
                y <<- x
                                
                set <- function(y) {
                        x <<- y
                        m <<- NULL
                }
                
                get <- function() x 
                setinverse <- function(inverse)  m <<- inverse
                getinverse <- function () m        
                
                list(set = set, get = get, setinverse = setinverse, getinverse=getinverse)
        }



## This function takes special matrix created by makeCacheMatrix and returns the inverse of the matrix.
## It will use a cached version of the inverse if it exists.

cacheSolve <- function(q, ...) {
        ## Return a matrix that is the inverse of 'x'   
                
                data <- q$get()
                if(!is.null(m) ) {
                        message("getting cached data") 
                        return(m)}  
                            
                 ## cached matrix exists
          
                ## no cache - get & save inverse of matrix
                inverse <- solve(data)
                q$setinverse(inverse)
                m <-- q$getinverse()
                m
                                
                                
}  ## cacheSolve function end