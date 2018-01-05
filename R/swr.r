# swr: string wrapper: break label, character string in multiple lines

#' swr
#'
#' string wrapper: break label, character string in multiple lines
#' @param string string to break up
#' @param nwrap max character length per line
#' @keywords string, wrap
#' @export
#' @examples
#' swr("Guten Morgen Zürich", 5)
#'

swr = function(string, nwrap=20) {
  paste(strwrap(string, width=nwrap), collapse="\n")
}
swr = Vectorize(swr)
