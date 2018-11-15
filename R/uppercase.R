#' change de the factor to capital letters
#'
#' @param x factor
#' 
#'
#' @return factor
#' @export
#' @examples
#' uppercase(iris$Species)
uppercase <- function(x) {
  if (is.character(x))
    return(toupper(x))
  else return(x)
  
}

