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


