statisticCard <- function(dependency=NULL){
  require(htmltools)
  tagList(tag_statisticCard(), statisticCard_dependency(), dependency) -> tagx
  tagx |> econIDV::showWidget()
  invisible(tagx)
}

tag_statisticCard <-function(){
    tags$div(class = "statisticCard",
      style="margin-top:20px;",
      statisticCardContentFrame(),
      statisticCardTitleFrame())
}
ui_statisticCard <- function(dependency=NULL){
  tagList(tag_statisticCard(), statisticCard_dependency(), dependency)
}

