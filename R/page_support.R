
page_ui <-function(content=sectionPanel(), footerOn=c("首頁","找人", "找事/物","經濟數據")){
  footerOn=match.arg(footerOn)
    tags$div(class = "page",
      # tags$div(
        # class = "page-sectionPanel",
      content,
        # sectionContainer()),
      footer(onType=footerOn),
      tags$script("screen.orientation.lock('portrait');")
      )
}
sectionHeader <- function(){tags$div(class = "sectionHeader",
  tags$div(class = "sectionHeader-title"),
  tags$div(class = "sectionHeader-logo"))}
sectionContainer <- function(){
  tags$div(class = "sectionContainer",
    sectionHeader(),
  tags$div(class = "sectionContainer-sectionGraph"),
  tags$div(class = "sectionContainer-sectionTitle"),
  tags$div(class = "sectionContainer-sectionArticle"))}
pageUI <- function(content=sectionPanel(), footerOn=c("首頁","找人", "找事/物","經濟數據")){
  require(htmltools)
  page_ui(content, footerOn)
  htmltools::tagList(page_ui(content, footerOn), page_dependency(), attachment_dependency())
}
# pageUI(footerOn="經濟數據") |> econWeb::browseTag2()
# pageUI(
#   content=sectionPanel(
#     imgUrl="", imgWidget=plt),
#   footerOn="經濟數據"
#   ) |> econWeb::browseTag2()
