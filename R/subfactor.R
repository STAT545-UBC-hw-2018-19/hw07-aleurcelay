#' Extract first three characters of factor
#'
#' @param x factor
#' 
#'
#' @return factor
#' @export
#' @examples
#' subfactor(iris$Species)
subfactor <- function(x) {
  substr(x, start = 1, stop = 3)
  
}

