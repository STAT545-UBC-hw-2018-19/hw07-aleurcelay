#' factor_asis
#' 
#' Encode a vector as a factor with levels in the same order as they appear in the data. 
#' The factor() function orders the levels in alphabetical or numerical order.
#' 
#' @param x factor
#' 
#' @return factor
#' @export
#' 
#' @examples
#' factor_asis(iris$Species)
factor_asis <- function(x) {
  factor(x, levels = unique(x))
  
}

