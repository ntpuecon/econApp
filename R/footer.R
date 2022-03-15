#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
footer <- function(onType=c("首頁","找人", "找事/物","經濟數據"), width = NULL, height = NULL, elementId = NULL) {

  # forward options using x
  x = list(
    innerHTML = as.character(footer_tag(onType))
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'footer',
    x,
    width = width,
    height = height,
    package = 'econApp',
    elementId = elementId
  )
}

#' Shiny bindings for footer
#'
#' Output and render functions for using footer within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a footer
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name footer-shiny
#'
#' @export
footerOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'footer', width, height, package = 'econApp')
}

#' @rdname footer-shiny
#' @export
renderFooter <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, footerOutput, env, quoted = TRUE)
}
