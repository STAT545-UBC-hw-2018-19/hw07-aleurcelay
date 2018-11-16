#' Make a frequency table for a factor
#'
#' Create a tbl_df with two columns. The first column contains the input factor levels,
#' and the second factor contains the number of time each level is repeated in the dataset
#'
#' @param x factor
#'
#' @return tbl_df
#' @export
#' @examples
#' freq_out(iris$Species)
freq_out <- function(x) {
  xdf <- dplyr::data_frame(x)
  dplyr::count(xdf, x)
}
