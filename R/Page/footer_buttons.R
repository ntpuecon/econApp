btnReturn <- function(dependency=NULL){
  tagList(tag_btnReturn(), btnReturn_dependency(), attachment_dependency())
}
tag_btnReturn <-function(){
  tags$div(class = "address",
    tags$div(class = "address-return"))
}
btnReturn_dependency <- function(){
  htmltools::htmlDependency(
    name="econApp",
    version="1.0.0",
    src=c(file=system.file("/assets/css",  package = "econApp")),
    style="btnReturn.css",
    all_files = F
  )}
ui_btnReturn <- function(dependency=NULL){
  tagList(tag_btnReturn(), btnReturn_dependency(), dependency)
}
# ui_btnReturn() |> econWeb::browseTag2()
