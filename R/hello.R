#' Hello Function
#'
#' This function just prints "Hello, <Name>" for fun.
#' Daniel Sabanes wrote this function.
#'
#' @param my_name name to say hello to.
#'
#' @returns The printed string.
#' @export
#'
#' @examples
#' hello("Ben")
hello <- function(my_name) {
  n_chars <- nchar(my_name)
  greeting <- if (n_chars < 4) "Ciao" else if (n_chars > 4) "Hello" else "Hi"
  print(paste0(greeting, ", ", my_name))
}
