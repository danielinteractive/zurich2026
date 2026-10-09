#' Goodbye Function
#'
#' Prints a goodbye message for a supplied name.
#'
#' @param my_name Name to say goodbye to.
#'
#' @returns The printed string.
#' @export
#'
#' @examples
#' goodbye("Ben")
goodbye <- function(my_name) {
  print(paste0("Goodbye, ", my_name))
}
