#' First letter uppercase
#'
#' Returns the same factor but with the first letter changred to uppercase
#'
#' @param x factor
#' 
#'
#' @return factor
#' @export
#' @examples
#' first_upper(iris$Species)
first_upper <- function(x) {
  v <- as.character(x) #change to vector
  substr(v, 1, 1) <- toupper(substr(v, 1, 1))
  x <- factor(v)
  return (x)

}



