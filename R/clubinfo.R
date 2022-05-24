library(htmltools)
fig_clubinfo<- function() {
  fig<-econWeb::Fig()
  fig$export("inst/assets/css/clubinfo")
}
tag_clubinfo <-function(){
  tags$div(class = "info",
           tags$div(class = "info-icon"),
           tags$div(class = "info-content"))
}
clubinfo_dependency <- function(){
  htmltools::htmlDependency(
    name="econApp",
    version="1.0.0",
    src=c(file=system.file("/assets/css",  package = "econApp")),
    style="clubinfo.css",
    all_files = F
  )}
ui_clubinfo <- function(dependency=NULL){
  tagList(tag_clubinfo(), clubinfo_dependency(), dependency)
}
#ui_clubinfo() |> econWeb::browseTag2()

