tag_roundMaskBtn <-function(type, state="off"){
  require(htmltools)
  switch(
    type,
    "首頁"={"https://ntpuecon.github.io/econApp/assets/img/home.svg"},
    "找人"={"https://ntpuecon.github.io/econApp/assets/img/address.svg"},
    "找事/物"={"https://ntpuecon.github.io/econApp/assets/img/news.svg"},
    "經濟數據"={"https://ntpuecon.github.io/econApp/assets/img/graph.svg"}
  ) -> imgUrl
  color = c("on"="#6fcf97", "off"="#000000")
  # .css=css("border-color"=color[[state]])
  .css=htmltools::css(
    "border-color"="#000000",
    "box-shadow"="0px 4px 4px rgba(0, 0, 0, 0.25);"
    )
  if(state=="off") {
    # .css=paste0(
    #   .css, css("box-shadow"="0px 4px 4px rgba(0, 0, 0, 0.25);"))
    .class="btnRound"} else
    {
      .class="btnRound btn-on"
    }
  tags$div(class = .class,
    # style=.css,
    tags$div(class = "btnRound-maskGraph",
      tags$div(class = "btnRound-maskGraph-color",
        style=css(
          mask = glue::glue("no-repeat center url({imgUrl})"),
          `-webkit-mask`= glue::glue("no-repeat center url({imgUrl})")
        ))))
}

roundMaskBtn <- function(imgUrl="/assets/img/graph.svg", color="#000000"){
  tagList(tag_roundMaskBtn(imgUrl, color), roundMaskBtn_dependency())
}

#' Rounded masked button
#'
#' @param type one of c("首頁","找人", "找事/物","經濟數據")
#' @param state one of c("on", "off")
#'
#' @return
#' @export
#'
#' @examples roundMaskBtn(type="首頁", state="off") |> econWeb::browseTag2()
roundMaskBtn <- function(type=c("首頁","找人", "找事/物","經濟數據"), state=c("on","off")){
  require(htmltools)
  type=match.arg(type)
  state=match.arg(state)

  # tag_roundMaskBtn(imgUrl, state)
  # browser()
  tagList(tag_roundMaskBtn(type, state), roundMaskBtn_dependency())
}

