
greedy_knapsack<- function(x, W){
  weight<- x[,1]
  value<- x[,2]
  r<- numeric(0)
  
  for (i in 1:nrow(x)){
    r[i]<- value[i]/weight[i]
  }
  x_sort<- x[order(r,decreasing=TRUE),]
  
  items<- numeric(0)
  i<- 1
  cumWeight<- x_sort[i,1]
  while (cumWeight < W){
    cumWeight<- cumWeight + x_sort[i:i+1,1]
    i<- i + 1
  }
  index<- 

  return(items)
}

greedy_knapsack (x = knapsack_objects[1:800,], W = 3500)
