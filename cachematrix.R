## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## I want to set the parent environment lexic and save the matrix given by
## the user in the caisheee.

makeCacheMatrix <- function(x = matrix()) {
matriz <- NULL
establecer <- function(y){
  x <<- y
  matriz <<- NULL
  
}
obtener <- function() x
establecer_inverso <- function(inverso) matriz <<- inverso
obtener_inverso <- function() matriz
list(establecer = establecer, obtener = obtener, 
     establecer_inverso = establecer_inverso, 
     obtener_inverso = obtener_inverso)

}


## Write a short comment describing this function
## I expect for this function to get the matrix from the "makeCachematrix",
##pull it's inverse with "solve()" function and if there is none, print
##a message but if there is one, print it's inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  matriz <- x$obtener_inverso()
  if(!is.null(matriz)){
    message("obteniendo datos en la caché")
    return(matriz)
  }
  datos <- x$obtener()
  matriz <- solve(datos, ...)
  x$establecer_inverso(matriz)
  print(matriz)
}