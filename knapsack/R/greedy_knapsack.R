
greedy_knapsack<- function(x, W){
  weight<- x[,1]
  value<- x[,2]
  r<- numeric(0)
  for (i in 1:nrow(x)){
    r[i]<- value[i]/weight[i]
  }
  x_sort<- x[order(r,decreasing=FALSE),]
  
  items<- numeric(0)
  for(j in 1:nrow(x_sort)){
    if (x_sort[j] < W){
      items[j] <- x_sort[j]
    }
  }
  return(items)
}

greedy_knapsack(x = knapsack_objects[1:800,], W = 3500)
