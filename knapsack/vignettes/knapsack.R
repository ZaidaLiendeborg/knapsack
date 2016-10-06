## ------------------------------------------------------------------------
library(knapsack)
set.seed(42)
n <- 2000
knapsack_objects <-data.frame(w=sample(1:4000, size = n, replace = TRUE),
v=runif(n = n, 0, 10000))


## ------------------------------------------------------------------------
brute_force_knapsack(x=knapsack_objects[1:8,], W=3500)


## ------------------------------------------------------------------------
system.time(brute_force_knapsack(x=knapsack_objects[1:16,], W=3500))


## ------------------------------------------------------------------------
knapsack_dynamic(x=knapsack_objects[1:8,], W=3500)

## ---- eval=FALSE---------------------------------------------------------
#  system.time(knapsack_dynamic(x=knapsack_objects[1:500,], W=3500))
#  

## ------------------------------------------------------------------------
greedy_knapsack(x=knapsack_objects[1:800,], W=3500)


## ------------------------------------------------------------------------
n<-1000000
knapsack_objects_big <-data.frame(w=sample(1:4000, size = n, replace = TRUE),
v=runif(n = n, 0, 10000))


## ------------------------------------------------------------------------
system.time(greedy_knapsack(x=knapsack_objects_big[1:1000000,], W=3500))

