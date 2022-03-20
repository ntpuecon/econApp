businessCycle_info_byTime <- function(time="去年同月", light=c("recession", "out-of-recession", "stable", "out-of-boom", "boom"), quiet=F){
  require(htmltools)

  lightImgSrc="https://ntpuecon.github.io/econApp/assets/img/light.png"
  tagList(tag_statisticContentFrame(
    time, lightImgSrc
  ), statisticContentFrame_dependency()) -> tagUI
  if(!quiet) tagUI |> econIDV::showWidget()
  invisible(tagUI)
}
tag_statisticContentFrame <-function(time="去年同月", lightImgSrc="https://ntpuecon.github.io/econApp/assets/img/light.png"){
  tags$div(class = "bcInMonth",
    tags$div(class = "bcInMonth-time",
      time),
    tags$div(class = "bcInMonth-light",
      tags$div(class = "bcInMonth-light-lightFrame",
        tags$div(class = "bcInMonth-light-lightFrame-lightImg",
          style=
            glue::glue('background: url({lightImgSrc});'))),
      tags$div(class = "bcInMonth-light-ligtbulb",
        tags$img(
          src="https://ntpuecon.github.io/econApp/assets/img/lightbulb.svg",
          height="20px", width="14px"
        ))))
}
ui_statisticContentFrame <- function(dependency=NULL){
  tagList(tag_statisticContentFrame(), statisticContentFrame_dependency(), dependency)
}
