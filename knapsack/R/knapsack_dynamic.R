#' Solving the knapsack problem using dynamic programming
#' 
#' The function solves the knapsack problem using dynamic programming. The function iterates over all possible values of W. It returns the same value as \code{brute_force_knapsack}. 
#' @param x an data frame with a number of items.
#' @param W the limited weight the knapsack can handle.
#' @import stats
#' @return A list of the maximated value with corresponding elements that fits in the bag.
#' @examples
#' n<- 2000
#' knapsack_objects <-data.frame(w=sample(1:4000, size = n, replace = TRUE),v=runif(n = n, 0, 10000))
#' knapsack_dynamic(x=knapsack_objects[1:8,], W=2000)
#' @references \url{https://en.wikipedia.org/wiki/Knapsack_problem#0.2F1_knapsack_problem}
#' @export
 
knapsack_dynamic<- function(x, W){
  
  # Stop function if elements in x are not more than zero
  stopifnot(all(x >= 0))
  
  # Stop function if class of x is not a data frame
  stopifnot(class(x)=="data.frame") 
  
  # Stop function if W is less than or equal to zero
  stopifnot(W >= 0)
  
  best_items<- numeric(0)
  n<- nrow(x) + 1
  m<- matrix(nrow= n, ncol= W + 1)
  rownames(m)<- c(1:n)
  
  for (i in 1:(W+1)){
    m[1,i]<-0
  }
  
  for (i in 1:nrow(x)){
    for (j in 1:(W+1)){
      if (x[i,1] > j){
        m[i+1,j] <- m[i,j] 
      }
      else{
        m[i+1,j] <- max( m[i,j] , m[i,(j-x[i,1])] + x[i,2])
      }
    }
  }
  
  value=m[n, W+1]
  names(value)<- NULL
  
  i <- i + 1
  
  while(i > 1 ){
    if( m[i-1,j] < m[i,j] ){
      
      best_items <- c(best_items, i-1)
      
      i <- i - 1
      j <- j - x[i,1]
    }
    else{
      i <- i - 1
    }
  }
  
  best_items <- best_items[order(best_items, decreasing = FALSE)]
  
  ls<- list(value=round(value),elements=best_items)
  
  return(ls)
}
