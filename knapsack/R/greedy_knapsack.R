#' Solving the knapsack problem using the greedy heuristic function
#' 
#' The function solves the knapsack problem , \url{https://en.wikipedia.org/wiki/Knapsack_problem}
#' using greedy heuristic function. 
#' @param x an data frame with a number of items.
#' @param W the limited weight the knapsack can handle.
#' @return A list of the maximated value with corresponding elements that fits in the bag.
#' @examples
#' knapsack_objects <-data.frame(w=sample(1:4000, size = n, replace = TRUE),v=runif(n = n, 0, 10000))
#' greedy_knapsack(x=knapsack_objects[1:500,] W=2000)
#' @export


greedy_knapsack<- function(x, W){
  
  stopifnot(all(x >= 0))
  stopifnot(class(x)=="data.frame") 
  stopifnot(W >= 0)
  
  
  weight<- x[,1]
  value<- x[,2]
  r<- value/weight
  r_sort<- order(r,decreasing=TRUE)
  
  items<- numeric(0)
  totWeight<- 0
  totValue<- 0
  
  for (i in r_sort){
    if(weight[i] + totWeight > W){
      break
    }
  if((weight[i] + totWeight) <= W){
      items<- c(items, i)
      totWeight<- weight[i] + totWeight
      totValue<- value[i] + totValue
    }
  if (totWeight > W){
    items<- items[1:(length(items)-1)]
  }
  }
  ls<- list(value = totValue, elements = items)
  return(ls)
}


