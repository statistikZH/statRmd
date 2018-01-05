# flush_plot: plot function to left align title, subtitle and caption of ggplot object

#' flush_plot
#'
#' plot function to left align title, subtitle and caption of ggplot object
#' @param x ggplot object
#' @param title Grafiktitel
#' @param subtitle Untertitel
#' @param caption Quellenangabe
#' @keywords flush_plot, plot
#' @export
#' @examples
#' flush_plot(ggplot_object, title = "Titel", subtitle = "Untertitel", caption = "Datenquelle")
#'


flush_plot <- function(x, title, subtitle, caption) {
  tg <- function(label, ...) {
    textGrob(label,  x=unit(0, "npc"), just=c("left", "bottom"),
             gp=do.call(gpar, as.list(substitute(list(...)))[-1L])) }
  grid.arrange(
    tg(title, fontsize=10, fontface = "bold", col="#2b2b2b"),
    tg(subtitle, fontsize=9, col="#2b2b2b"), x,
    tg(caption, fontsize=8, col="#2b2b2b"),
    # ncol=1, heights=c(0.08, 0.03, 0.86, 0.03)
    ncol=1, heights=c(0.075, 0.025, 0.85, 0.05)
  )
}

