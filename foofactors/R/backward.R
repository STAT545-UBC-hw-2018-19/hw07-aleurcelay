#' Backwards factors 
#' 
#' Create a new factor with the inverse order of the original factor
#' 
#' 
#' @param x factor
#' 
#' @return factor
#' @export
#' 
#' @examples
#' backward(iris$Species)
backward <- function(x) {
  back_order <- seq(length(x), 1)
  z <- reorder(x, back_order)
  return(z)
}

