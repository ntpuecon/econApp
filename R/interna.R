library(htmltools)
fig_interna <- function() {
  fig<-econWeb::Fig()
  fig$export("inst/assets/css/interna")
}
tag_interna <-function(){
  tags$div(class = "interna",
           tags$div(class = "interna-icon"),
           tags$div(class = "interna-content",
                    tags$div(class = "interna-content-head"),
                    tags$div(class = "interna-content-date")))
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
ui_interna() |> econWeb::browseTag2()
