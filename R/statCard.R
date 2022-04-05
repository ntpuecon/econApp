#' 經濟數據小卡片
#'
#' @param title a character
#' @param content a shiny.tag.
#' @param color "pink", "blue", "yellow" or "green"
#' @param dependency default=NULL
#'
#' @return
#' @export
#'
#' @examples none.
statCard <- function(title="景氣信號", content=businessCycleLight(), color="pink", dependency=NULL){
  tagList(tag_statCard(title, content, color), statCard_dependency(), dependency)
}
tag_statCard <-function(title, content, color="pink"){
  tags$div(class = paste("statisticCard", color),
    tags$div(class = "statisticCard-titleHolder",
      tags$div(class = "statisticCard-titleHolder-title", title)),
    tags$div(class = "statisticCard-fluidContainer",
      content))
}

# statCard() |> econWeb::browseTag2()
