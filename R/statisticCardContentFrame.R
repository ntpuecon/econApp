statisticCardContentFrame <-function(){
  tagList(
    tags$div(class = "contentFrame",
      businessCycle_info_byTime(
        "3月"
      ),
      businessCycle_info_byTime(
        "上個月"
      ),
      businessCycle_info_byTime(
        "去年同月"
      )
      ),
    statisticCardContentFrame_dependency() ) -> tagx
  tagx |> econIDV::showWidget()
  invisible(tagx)
}
ui_statisticCardContentFrame <- function(dependency=NULL){
  tagList(tag_statisticCardContentFrame(), statisticCardContentFrame_dependency(), dependency)
}
