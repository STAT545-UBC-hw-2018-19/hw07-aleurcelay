#' change de the order of the factors backwards
#'
#' @param x factor
#' 
#'
#' @return factor
#' @export
#' @examples
#' backward(iris$Species)
backward <- function(x) {
  x[length(x):1]
  
}
