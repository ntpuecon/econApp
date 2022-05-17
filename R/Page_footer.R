# footer= Footer(list_tags_footerButton)
# Footer = function()

footer2 <- function(onType="首頁", dependency=NULL){
  tagList(tag_footer2(onType), footer2_dependency(), dependency)
}
tag_footer2 <-function(onType="首頁"){
  types=c("首頁","找人", "找事/物","經濟數據")
  purrr::map(
      types,
      tag_footerButton
    ) -> list_tags_footerButton
  which(types==onType) -> whichIsOn
  list_tags_footerButton[[whichIsOn]] <-
    tag_footerButton(onType, type="on")
  tags$div(class = "footer",
    list_tags_footerButton
    )
}

FooterConstructor <- function(...){
  footer <- list()
  list_btns = list(...)
  footer$button=list_btns
  footer$tag= function(){
    purrr::map(list_btns, ~{.x$.tag}) -> list_btnsInstance
    tags$div(class="footer",
      list_btnsInstance)
  }
 return(footer)
}

initiateFooter <- function(){
  purrr::map(c("首頁","找人", "找事/物","經濟數據"),
    ~FooterButton(.x)) -> list_footerBtns
  do.call(FooterConstructor, list_footerBtns)
}
inversemapname <- function(icon){
  .names=c("首頁","找人", "找事/物","經濟數據")
  .icons=c("home","findPerson","findThings","econData")
  names(.names) = .icons
  .names[icon]
}
mapname = function(types){
  c("首頁"="home","找人"="findPerson", "找事/物"="findThings","經濟數據"="econData")[types]
}

tag_footerButton <- function(onType, type=c("on", "off")){
  type=match.arg(type)
  tags$div(class = "footer-buttonHolderGraph",
    mask_btn(
      mapname(onType), type),
    tags$div(class = "footer-buttonHolderGraph-text",
      onType))
}

FooterButtons <- function(...){
  btnList = list(...)
  btnList
}
#' Generate one of the four footer btn functions
#'
#' @param onType one of c("首頁","找人", "找事/物","經濟數據")
#'
#' @return a list with on() and off() method and default property .tag
#' @export
#'
#' @examples \dontrun{}
FooterButton <- function(onType){
  btn = new.env()
  btn$on=function(){tags$div(class = "footer-buttonHolderGraph",
    mask_btn(
      mapname(onType), type="on"),
    tags$div(class = "footer-buttonHolderGraph-text",
      onType)) -> btn$.tag}
  btn$off=function(){tags$div(class = "footer-buttonHolderGraph",
    mask_btn(
      mapname(onType), type="off"),
    tags$div(class = "footer-buttonHolderGraph-text",
      onType)) -> btn$.tag }
  btn$return=function(){tags$div(class = "footer-buttonHolderGraph",
    mask_btn(
      "return", "off"),
    tags$div(class = "footer-buttonHolderGraph-text",
      onType)) -> btn$.tag }
  btn$.tag = btn$off()
  return(btn)
}
# footer2() |> econWeb::browseTag2()
