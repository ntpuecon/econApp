pageHeader <- function(pageTitle="首頁", dependency=NULL){
  tagList(tag_pageHeader(pageTitle), pageHeader_dependency(), dependency)
}

tag_pageHeader <-function(pageTitle="首頁"){
  tags$div(class = "header",
    tags$div(class = "header-content",
      tags$div(class = "header-content-icon"),
      tags$div(class = "header-content-text", pageTitle)),
    tags$div(class = "header-divider"))
}


# pageHeader() |> econWeb::browseTag2()
