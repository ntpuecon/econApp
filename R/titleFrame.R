statisticCardTitleFrame <- function(dependency=NULL){
  tagList(tag_titleFrame(), titleFrame_dependency(), dependency) ->
    tagUI
  tagUI |> econIDV::showWidget()
  invisible(tagUI)
}
tag_titleFrame <-function(){
  tags$div(class = "titleFrame",
    tags$div(class = "titleFrame-wordHolder",
      tags$div(class = "titleFrame-wordHolder-title", "景氣燈號")))
}
ui_titleFrame <- function(dependency=NULL){
  tagList(tag_titleFrame(), titleFrame_dependency(), dependency)
}
