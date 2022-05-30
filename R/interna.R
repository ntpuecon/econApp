library(htmltools)
fig_interna <- function() {
  fig<-econWeb::Fig()
  fig$export("inst/assets/css/interna",
             tags$img(
               src="lib/econApp-1.0.0/img/intern.svg"
  ))
}
tag_interna <-function(){
  tags$div(class = "interna",
           tags$div(class = "interna-icon",
                    tags$img(
                      src="lib/econApp-1.0.0/img/intern.svg"
                      )),
           tags$div(class = "interna-content",
                    tags$div(class = "interna-content-head","台灣經濟研究院暑假實習核定名單"),
                    tags$div(class = "interna-content-date","公告日期:2021-05-21")))
}
interna_dependency <- function(){
  htmltools::htmlDependency(
    name="econApp",
    version="1.0.0",
    src=c(file=system.file("/assets/css", package = "econApp")),
    style="interna.css",
    all_files = F
  )}
ui_interna <- function(dependency=NULL){
  tagList(tag_interna(), interna_dependency(), dependency)
}
#ui_interna() |> econWeb::browseTag2()
