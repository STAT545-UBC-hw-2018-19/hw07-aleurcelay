#' change de the factor to lowercase letters
#'
#' @param x factor
#' 
#'
#' @return factor
#' @export
#' @examples
#' lowercase(iris$Species)
lowercase <- function(x) {
  if (is.character(x))
    return(tolower(x))
  else return(x)
  
}

