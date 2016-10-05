
greedy_knapsack<- function(x, W){
  weight<- x[,1]
  value<- x[,2]
  r<- value/weight
  r_sort<- order(r,decreasing=TRUE)
  
  items<- numeric(0)
  totWeight<- 0
  totValue<- 0
  
  for (i in r_sort){
    if ((weight[i] + totWeight) <= W){
      items<- c(items, i)
      totWeight<- weight[i] + totWeight
      totValue<- value[i] + totValue
    }
  } 
  if (totWeight > W){
    items<- items[1:(length(items)-1)]
  }
  
  ls<- list(value = totValue, elements = items)
  return(ls)
}

greedy_knapsack(x = knapsack_objects[1:1200,], W = 2000)

i<- 1
cumWeight<- x_sort[i,1]
while (cumWeight < W){
  cumWeight<- cumWeight + x_sort[i:i+1,1]
  i<- i + 1
}