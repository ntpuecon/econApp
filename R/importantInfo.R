fig_importantInfo <- function() {
  fig <- econWeb::Fig()
  fig$export("inst/assets/css/importantInfo")
}
tag_importantInfo <-function(){
  tags$div(class = "importantInfo",
           tags$div(class = "importantInfo-sorts",
                    tags$div(class = "importantInfo-sorts-alumni",
                             tags$div(class = "importantInfo-sorts-alumni-word", "系友會資訊")),
                    tags$div(class = "importantInfo-sorts-internship",
                             tags$div(class = "importantInfo-sorts-internship-word", "實習資訊"))),
           tags$div(class = "importantInfo-info"))
}
# importantInfo_dependency <- function(){
#   htmltools::htmlDependency(
#     name="econApp",
#     version="1.0.0",
#     src=c(file=system.file("/assets/css", package = "econApp")),
#     style="importantInfo.css",
#     all_files = F
#   )}
importantInfo <- function(dependency=NULL){
  tagList(tag_importantInfo(), importantInfo_dependency(), dependency)
}
#importantInfo() |> econWeb::browseTag2()
