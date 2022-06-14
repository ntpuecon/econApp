#' Title
#'
#' @param kind a character. "系友會資訊" or "實習資訊"
#' @param dependency
#'
#' @return
#' @export
#'
#' @examples none.
importantInfo <- function(kind="系友會資訊", dependency=NULL){
  tagList(tag_importantInfo(kind), importantInfo_dependency(), dependency)
}


# helper ------------------------------------------------------------------



fig_importantInfo <- function() {
  fig <- econWeb::Fig()
  fig$export("inst/assets/css/importantInfo")
}
tag_importantInfo <-function(kind){
  tags$div(class = "importantInfo",
           tags$div(class = "importantInfo-sorts",
                    tags$div(class = "importantInfo-sorts-alumni",
                             style = htmltools::css(`background-color`= alumniColor(kind)),
                             tags$div(class = "importantInfo-sorts-alumni-word", "系友會資訊")),
                    tags$div(class = "importantInfo-sorts-internship",
                             style = htmltools::css(`background-color`= internshipColor(kind)),
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
alumniColor <- function(click){
  switch(
    click,
    "系友會資訊"={
      "rgba(242, 153, 74, 0.2)"
    },
    "實習資訊"="#FFFFFF")
}
internshipColor <- function(click){
  switch(
    click,
    "系友會資訊"={
      "#FFFFFF"
    },
    "實習資訊"="rgba(242, 153, 74, 0.2)")
}
#importantInfo() |> econWeb::browseTag2()
