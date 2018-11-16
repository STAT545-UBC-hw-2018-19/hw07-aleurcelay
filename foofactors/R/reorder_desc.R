#' Reorder vector in descending order
#' 
#' Create a new factor with with a descending order of the levels of the original factor
#' 
#' @param x factor
#' 
#'
#' @return factor
#' @export
#' @examples
#' reorder_desc(iris$Species)
reorder_desc <- function(x) {
  stats::reorder(x, dplyr::desc(x))
  
}

