tag_statisticContentFrame <-function(time="去年同月"){
  tags$div(class = "bcInMonth",
    tags$div(class = "bcInMonth-time",
      time),
    tags$div(class = "bcInMonth-light",
      tags$div(class = "bcInMonth-light-lightFrame",
        tags$div(class = "bcInMonth-light-lightFrame-lightImg")),
      tags$div(class = "bcInMonth-light-ligtbulb",
        tags$img(
          src="https://ntpuecon.github.io/econApp/assets/img/lightbulb.svg",
          height="20px", width="14px"
        ))))
}
statisticContentFrame_dependency <- function(){
  htmltools::htmlDependency(
    name="statisticContentFrame",
    version="1.0.0",
    src=c(file=normalizePath("./assets/css")),
    style="statisticContentFrame.css",
    all_files = F
  )}
ui_statisticContentFrame <- function(dependency=NULL){
  tagList(tag_statisticContentFrame(), statisticContentFrame_dependency(), dependency)
}
ui_statisticContentFrame() |> econWeb::browseTag2()
