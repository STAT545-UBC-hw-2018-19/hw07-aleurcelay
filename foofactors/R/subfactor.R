#' First three characters of factor
#'
#' This function returns a factor with just the first three letters of each element.
#' This may help to not have all the complete names when plotting. Note: There is a problem 
#' sometimes with levels that are not represented by only 3 letters like United States
#' in the case of countries
#'
#' @param x factor
#' 
#'
#' @return factor
#' @export
#' @examples
#' subfactor(iris$Species)
subfactor <- function(x) {
  factor(substr(x, start = 1, stop = 3))
  
}

