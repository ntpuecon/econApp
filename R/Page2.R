#' initiate a page constructor
#'
#' @param pageTitle one of "首頁","找人", "找事/物","經濟數據"
#'
#' @return a shiny tag
#' @export
#'
#' @examples
#' \dontrun{
#' # construct homepage
#' homepage = Page("首頁")
#' homepage$create()
#' homepage$footer$button[[1]]$on()
#' homepage$add_content("首頁內容")
#' homepage$tag() |> econWeb::browseTag2()
#' homepage$footer$button[[1]]$return()
#' homepage$tage() |> econWeb::browseTag2()
#'
#' pplPage = Page("找人")
#' pplPage$create()
#' pplPage$footer$button[[2]]$on()
#' pplPage$add_content("找人內容")
#' pplPage$tag() |> econWeb::browseTag2()
#'
#' thingPage = Page("找事/物")
#' thingPage$create()
#' thingPage$footer$button[[3]]$on()
#' thingPage$add_content("找事/物內容")
#' thingPage$tag() |> econWeb::browseTag2()
#'
#' statPage = Page("經濟數據")
#' statPage$create()
#' statPage$footer$button[[4]]$on()
#' statPage$add_content("數據內容")
#' statPage$tag() |> econWeb::browseTag2()}
Page <- function(pageTitle="首頁"){
  require(htmltools)
  pageX=new.env()
  pageX$create = function(){
    pageX$add_content = add_contentMethod(pageX)
    pageX$.shinyTagTitle=pageTitle
    pageX$title = titleMethod(pageX)
    pageX$footer = initiateFooter()
    pageX$.shinyTagContent=htmltools::div()
    pageX$.shinyfooter=function() pageX$footer$tag()
    pageX$tag = pageTagMethod(pageX)
  }
  return(pageX)
}

add_contentMethod = function(pageX){
  function(content=htmltools::div()){
    pageX$.shinyTagContent = content
  }
}
titleMethod = function(pageX){
  function(title=pageTitle) {
    pageX$.shinyTagTitle = title
  }
}
pageTagMethod <- function(pageX){
  function() {
    require(htmltools)
    tags$div(class = "page",
      pageHeader(pageX$.shinyTagTitle),
      tags$div(class = "page-content",
        pageX$.shinyTagContent),
      pageX$.shinyfooter()) -> pageTag
    tagList(pageTag, page_dependency(), maskBtn_dependency())
    }
}
#' initiate a page constructor
#'
#' @param pageTitle one of "首頁","找人", "找事/物","經濟數據"
#'
#' @return a shiny tag
#' @export
#'
#' @examples
#' \dontrun{
#' # construct homepage
#' homepage = Page2("首頁")
#' homepage$create()
#' homepage$footer$button[[1]]$on()
#' homepage$add_content("首頁內容")
#' homepage$tag() |> econWeb::browseTag2()
#' homepage$footer$button[[1]]$return()
#' homepage$tage() |> econWeb::browseTag2()
#'
#' pplPage = Page2("找人")
#' pplPage$create()
#' pplPage$footer$button[[2]]$on()
#' pplPage$add_content("找人內容")
#' pplPage$tag() |> econWeb::browseTag2()
#'
#' thingPage = Page2("找事/物")
#' thingPage$create()
#' thingPage$footer$button[[3]]$on()
#' thingPage$add_content("找事/物內容")
#' thingPage$tag() |> econWeb::browseTag2()
#'
#' statPage = Page2("經濟數據")
#' statPage$create()
#' statPage$footer$button[[4]]$on()
#' statPage$add_content("數據內容")
#' statPage$tag() |> econWeb::browseTag2()}
Page2 <- function(pageTitle="首頁"){
  require(htmltools)
  pageX=new.env()
  pageX$create = function(){
    pageX$add_content = add_contentMethod(pageX)
    pageX$.shinyTagTitle=pageTitle
    pageX$title = titleMethod(pageX)
    pageX$footer = initiateFooter()
    pageX$.shinyTagContent=htmltools::div()
    pageX$.shinyfooter=function() pageX$footer$tag()
    pageX$tag = pageTagMethod(pageX)
  }
  return(pageX)
}
