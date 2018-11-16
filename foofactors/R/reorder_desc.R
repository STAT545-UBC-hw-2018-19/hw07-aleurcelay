#' Reorder vector in descending order
#' 
#' Encodes a vector as a factor with levels in the same order as they appear.
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

