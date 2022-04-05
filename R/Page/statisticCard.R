#' 經濟數據小卡片
#'
#' @param title character. 卡片主題
#' @param content shiny.tag. 卡片內容
#' @param ...
#' @param dependency
#'
#' @return
#' @export
#'
#' @examples
statisticCard <- function(title="景氣燈號", content=businessCycleLight(), ..., dependency=NULL){
  require(htmltools)
  tagList(tag_statisticCard(title, content, ...), statisticCard_dependency(), dependency) -> tagx
  tagx |> econIDV::showWidget()
  invisible(tagx)
}

tag_statisticCard <-function(title, content, ...){
    tags$div(class = "statisticCard",
      style="margin-top:20px;", ...,
      statisticCardContentFrame(content),
      statisticCardTitleFrame(title))
}
ui_statisticCard <- function(dependency=NULL){
  tagList(tag_statisticCard(), statisticCard_dependency(), dependency)
}

