#' Page template constructor
#'
#' @param pageTitle title of the page, default at "首頁"
#' @param content a shiny.tag to be inserted into page content.
#'
#' @return
#' @export
#'
#' @examples none.
Page <- function(pageTitle="首頁", content=NULL){
  tagList(tag_page2(pageTitle, content), page2_dependency(), maskBtn_dependency())
}
tag_page2 <-function(pageTitle="首頁", content=NULL){
    tags$div(class = "page",
      pageHeader(pageTitle),
      tags$div(class = "page-content",
        content),
      footer2(
        onType=pageTitle
      ))

}
page2_dependency <- function(){
  htmltools::htmlDependency(
    name="econApp-page2",
    version="1.0.0",
    src=c(file=system.file("/assets/css",  package = "econApp")),
    style="page2.css",
    all_files = T
  )}

# ui_page2() |> econWeb::browseTag2()
