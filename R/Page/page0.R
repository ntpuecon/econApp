#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
.page <- function(content=sectionPanel(), footerOn=c("首頁","找人", "找事/物","經濟數據"), width = NULL, height = NULL, elementId = NULL) {

  # forward options using x
  x = list(
    innerHTML = as.character(page_ui(content, footerOn))
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'page',
    x,
    width = width,
    height = height,
    package = 'econApp',
    elementId = elementId
  )
}

#' Shiny bindings for page
#'
#' Output and render functions for using page within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a page
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name page-shiny
#'
#' @export
pageOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'page', width, height, package = 'econApp')
}

#' @rdname page-shiny
#' @export
renderPage <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, pageOutput, env, quoted = TRUE)
}
