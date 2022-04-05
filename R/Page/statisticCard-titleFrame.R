statisticCardTitleFrame <- function(title, dependency=NULL){
  tagList(tag_titleFrame(title), titleFrame_dependency(), dependency) ->
    tagUI
  tagUI |> econIDV::showWidget()
  invisible(tagUI)
}
tag_titleFrame <-function(title="景氣燈號"){
  tags$div(class = "titleFrame",
    tags$div(class = "titleFrame-wordHolder",
      tags$div(class = "titleFrame-wordHolder-title", title)))
}
ui_titleFrame <- function(dependency=NULL){
  tagList(tag_titleFrame(), titleFrame_dependency(), dependency)
}
