#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
.sectionPanel <- function(title="經濟數據", imgUrl="/lib/img-1/graphdemo.png", imgWidget=NULL, storyTitle=NULL, story=NULL, dependency=NULL, width = NULL, height = NULL, elementId = NULL) {

  # forward options using x
  x = list(
    innerHTML = as.character(tag_sectionPanel(title=title, imgUrl=imgUrl, imgWidget=imgWidget, storyTitle=storyTitle, story=story))
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'sectionPanel',
    x,
    width = width,
    height = height,
    package = 'econApp',
    elementId = elementId
  )
}

#' Shiny bindings for sectionPanel
#'
#' Output and render functions for using sectionPanel within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a sectionPanel
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name sectionPanel-shiny
#'
#' @export
sectionPanelOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'sectionPanel', width, height, package = 'econApp')
}

#' @rdname sectionPanel-shiny
#' @export
renderSectionPanel <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, sectionPanelOutput, env, quoted = TRUE)
}
