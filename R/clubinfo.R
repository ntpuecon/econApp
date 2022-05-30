library(htmltools)
fig_clubinfo<- function() {
  fig<-econWeb::Fig()
  fig$export("inst/assets/css/clubinfo",
             tags$img(
    src="lib/econApp-1.0.0/img/iconnews.svg"
  ))
}
tag_clubinfo <-function(){
  tags$div(class = "info",
           tags$div(class = "info-icon",
                    tags$img(
                      src="lib/econApp-1.0.0/img/iconnews.svg"
           )),
           tags$div(class = "info-content",
                    tags$div(class = "info-content-head","碳排大戶 台電恐年付289億碳費
TW.NEWS.YAHOO.COM"),
                    tags$div(class = "info-content-body","張 孝銘>>大家好~為了這國家，大家有解方嗎?這筆錢可以減少嗎?因為這是大家的錢。"),
                    tags$div(class = "info-content-date","2021年11月21日")))
}
# clubinfo_dependency <- function(){
#   htmltools::htmlDependency(
#     name="econApp",
#     version="1.0.0",
#     src=c(file=system.file("/assets/css",  package = "econApp")),
#     style="clubinfo.css",
#     all_files = F
#   )}
clubinfo <- function(dependency=NULL){
  tagList(tag_clubinfo(), clubinfo_dependency(), dependency)
}
#clubinfo() |> econWeb::browseTag2()

