#' Reorder vector in descending order
#'
#' @param x factor
#' 
#'
#' @return factor
#' @export
#' @examples
#' reorder_desc(iris$Species, iris$Sepal.Length)
reorder_desc <- function(x) {
  reorder(x, dplyr::desc(x))
  
}

