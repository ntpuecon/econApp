#' initiate a page constructor
#'
#' @param pageTitle
#'
#' @return
#' @export
#'
#' @examples
Page2 <- function(pageTitle="首頁"){
  pageX=new.env()
  pageX$create = function(pageTitle="首頁"){
    pageX = new.env()
    pageX$add_content = add_contentMethod(pageX)
    pageX$title = titleMethod(pageX, title=pageTitle)
    pageX$footer = footerConstructor(pageX)
    pageX$.shinyTagPage
    pageX$.shinyTagTitle=htmltools::div()
    pageX$.shinyTagContent
    pageX$.shinyfooter
    pageX$page = pageMehtod(pageX)
  }
  return(pageX)
}

add_contentMethod = function(pageX){
  function(content=htmltools::div()){
    pageX$.shinyTagContetn = content
  }
}
titleMethod = function(pageX, pageTitle){
  function(title=pageTitle) {
    pageX$.shinyTagTitle = pageTitle
  }
}
footerConstructor = function(pageX){
  footer = initiateFooter()
  footerX$button = footer$button
  footerX$tag = function() {
    pageX$.shinyFooter <- footer$tag()
  }
  return(footerX)
}

# construct homepage
homepage = Page2("首頁")
homepage$create()
homepage$footer$button[[2]]$on()
homepage$add_content("首頁內容")
homepage$tag() |> econWeb::browseTag2()

pplPage = Page2("找人")
pplPage$create()
pplPage$footer$button[[2]]$on()
pplPage$add_content("找人內容")
pplPage$tag() |> econWeb::browseTag2()

thingPage = Page2("找事/物")
thingPage$create()
thingPage$footer$button[[3]]$on()
thingPage$add_content("找事/物內容")
thingPage$tag() |> econWeb::browseTag2()

statPage = Page2("經濟數據")
statPage$create()
statPage$footer$button[[4]]$on()
statPage$add_content("數據內容")
statPage$tag() |> econWeb::browseTag2()
