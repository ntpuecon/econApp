statisticCardContentFrame <-function(content=businessCycleLight()){
  tagList(
    tags$div(class = "contentFrame",
      content
      ),
    statisticCardContentFrame_dependency() ) -> tagx
  tagx |> econIDV::showWidget()
  invisible(tagx)
}
ui_statisticCardContentFrame <- function(dependency=NULL){
  tagList(tag_statisticCardContentFrame(), statisticCardContentFrame_dependency(), dependency)
}
