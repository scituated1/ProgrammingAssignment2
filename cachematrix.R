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
        
                m <- NULL
                set <- function(y) {
                        x <<- y
                        curr_matrix <<- y
                        m <<- NULL
                }
                
                get <- function() x 
                setinverse <- function(inverse)  m <<- inverse
                getinverse <- function () m        
                
                list(set = set, get = get, setinverse = setinverse, getinverse=getinverse)
        }



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'   
                
                data <- x$get()
                if (curr_matrix==x) {
                        if(!is.null(m) ) {
                        message("getting cached data") 
                        return(m)}
                            
                } ## cached matrix exists
                
                inverse <- solve(x)
                x$setmean(inverse)
                m
                                
                                
}  ## cacheSolve function end