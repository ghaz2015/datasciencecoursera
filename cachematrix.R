## Put comments here that give an overall description of what your
# Matrix inversion is usually a costly computation and there may be some benefit to caching the inverse of a matrix rather than compute it repeatedly.

## functions do
# The following 2 funcations are used to cache the inverse of a matrix.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- funcation(y){
		
		x <<- y
		inv <<- NULL
	}
	get <- funcation() x
	setinverse <- funcation(inverse) inv <<- inverse
	setinverse <- funcation() inv
	list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
	
}


## Write a short comment describing this function

# The following function returns the inverse of the matrix. It first checks if
# the inverse has already been computed. If so, it gets the result and skips the
# computation. If not, it computes the inverse, sets the value in the cache via
# setinverse function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.unll(inv)) {
        	message("getting cached data.")
        	return(inv)
        	
        }
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv
        
}
