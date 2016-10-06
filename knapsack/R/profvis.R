
install.packages("profvis")
library(profvis)

#brute force 
profvis({
  
brute_force_knapsack(x=knapsack_objects[1:8,], W=3500)
})

#greedy 
profvis({
  
  greedy_knapsack(x=knapsack_objects[1:800,], W=3500)
})

#dynammic
profvis({
  knapsack_dynamic(x=knapsack_objects[1:8,], W=3500)
})