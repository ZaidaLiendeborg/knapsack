test_that("Testing brute_force_knapsack",{
  set.seed(42)
  n <- 2000
  knapsack_objects <-data.frame(w=sample(1:4000, size = n, replace = TRUE),
      v=runif(n = n, 0, 10000))
  test1<- brute_force_knapsack(x=knapsack_objects[1:8,],W=3500)
  
  expect_that(brute_force_knapsack, is_a("function"),
              info = "Error: brute_force_knapsack is not a function.")
  expect_that(all(names(formals(brute_force_knapsack)) %in% c("x","W")), 
              condition=is_true(), info = "Error: Argument name is wrong.")
  expect_that(test1, is_a("list"), info= "Error: brute_force_knapsack did not return an R list.")
  expect_that(knapsack_objects, is_a("data.frame"), info= "Error: Input knapsack_objects is not a dataframe")
  expect_error(brute_force_knapsack("letters"), info="Error: Insert data frame columns.")
  expect_error(brute_force_knapsack(x=knapsack_objects[1:7,],W=-1), info= "Error: W must be >= 0")
  expect_error(brute_force_knapsack(x=-12,W=1000), info= "Error: x must be >= 0")
}
)

test_that("Testing greedy_knapsack",{
  set.seed(42)
  n <- 2000
  knapsack_objects <-data.frame(w=sample(1:4000, size = n, replace = TRUE),
                                v=runif(n = n, 0, 10000))
  
  test1<- greedy_knapsack(x=knapsack_objects[1:8,],W=3500)
  
  expect_that(greedy_knapsack, is_a("function"),
              info = "Error: greedy_knapsack is not a function.")
  expect_that(all(names(formals(greedy_knapsack)) %in% c("x","W")), 
              condition=is_true(), info = "Error: Argument name is wrong.")
  expect_that(test1, is_a("list"), info= "Error: greedy_knapsack did not return an R list.")
  expect_error(greedy_knapsack("letters"), info="Error: Insert data frame columns.")
  expect_error(greedy_knapsack(x=knapsack_objects[1:7,],W=-10), info= "Error: W must be >= 0")
  expect_error(greedy_knapsack(x=-12,W=1000), info= "Error: x must be >= 0")
  
}
)

test_that("Testing knapsack_dymanic",{
  set.seed(42)
  n <- 2000
  knapsack_objects <-data.frame(w=sample(1:4000, size = n, replace = TRUE),
                                v=runif(n = n, 0, 10000))
  test1<- knapsack_dynamic(x=knapsack_objects[1:8,],W=3500)

  
  expect_that(knapsack_dynamic, is_a("function"),
              info = "Error: knapsack_dynamic is not a function.")
  expect_that(all(names(formals(knapsack_dynamic)) %in% c("x", "W")), 
              condition=is_true(), info = "Error: Argument name is wrong.")
  expect_that(test1, is_a("list"), info= "Error: knapsack_dynamic did not return an R list.")
  expect_error(knapsack_dynamic("letters"), info="Error: Insert data frame columns.")
  expect_error(knapsack_dynamic(x=knapsack_objects[1:7,],W=-1), info= "Error: W must be >= 0")
  expect_error(knapsack_dynamic(x=-12,W=1000), info= "Error: x must be >= 0")
  
}
)