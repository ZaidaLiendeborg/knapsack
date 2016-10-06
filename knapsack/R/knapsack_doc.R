#' The knapsack package
#' 
#' A package which contains three different approaches to solve the 0/1 knapsack problem. The knapsack should be filled with different items i= 1,2,,,n where each item has weight (w) and a value (v). However, the knapsack can only take a limited weight W. The aim is to find a discrete optimized solution, and that is a knapsack that contains the largest value of the items.
#' 
#' @section The knapsack package consists of the following Functions:
#' \link[knapsack]{brute_force_knapsack} function solves the knapsack problem by going through all the possible combinations of the items, and then find the maximum value.
#' 
#' \link[knapsack]{knapsack_dynamic} function solves the knapsack problem by iterating over all possible values of w. This function returns the same value as \code{brute_force_knapsack}. 
#' 
#' \link[knapsack]{greedy_knapsack} is a function that does not give the exact answer for the knapsack problem. However, it will reduce the complexity of the computation. It will return at least 50% of the maximum value. 
#' 
#' @author Emma Wallentinsson, Zaida Liendeborg
#' 
#' @references \url{https://en.wikipedia.org/wiki/Knapsack_problem}
#'
#' @docType package
#' @name knapsack
NULL