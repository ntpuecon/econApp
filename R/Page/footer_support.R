#' Footer
#'
#' @param onType one of c("首頁","找人", "找事/物","經濟數據")
#'
#' @return
#' @export
#'
#' @examples footer(onType="首頁") |> econWeb::browseTag2()
footer <- function(onType=c("首頁","找人", "找事/物","經濟數據")){
  require(htmltools)
  onType = match.arg(onType)
  # footer_tag(onType)
  tagList(footer_tag(onType), footer_dependency())
}
footer_tag <-function(onType="經濟數據"){
  # onType="經濟數據"
    types = c("首頁","找人", "找事/物","經濟數據")
    footerBtns() -> btns
    whichIsOn = which(types == onType)
    btns[[whichIsOn]] <-
      mask_btn(mapname(onType), 'on')
    tags$div(
      class = "footer",
      btns)
}
btnHolder <- function(type, state){
  tags$div(class = "footer-buttonHolder",
    roundMaskBtn(type,state),
    tags$div(class = "footer-buttonHolder-Text",type))
}
footerBtns <- function(){
  tagList(
    mask_btn("home", "off"),
    mask_btn("findPerson", "off"),
    mask_btn("findThings", "off"),
    mask_btn("econData", "off")
  ) -> btnHolders
  btnHolders
}
