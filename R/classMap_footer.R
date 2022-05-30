#' Title
#'
#' @param category a character. "公職考試"or"研究所"
#' @param dependency
#'
#' @return
#' @export
#'
#' @examples none.
classMap_footer <- function(category="公職考試", dependency=NULL){
  tagList(tag_classMap_footer(category), classMap_footer_dependency(), dependency)
}


# helper ------------------------------------------------------------------



fig_classMap_footer <- function() {
  fig <- econWeb::Fig()
  fig$export("inst/assets/css/classMap_footer")
}
tag_classMap_footer <-function(category){
  tags$div(class = "classMap_footer",
           tags$div(class = "classMap_footer-word", mapFooterWord(category)),
           tags$div(class = "classMap_footer-icon",
                    tags$img(
                      src=mapFooterIcon(category))))
}

# classMap_footer_dependency <- function(){
#   htmltools::htmlDependency(
#     name="econApp",
#     version="1.0.0",
#     src=c(file=system.file("/assets/css", package = "econApp")),
#     style="classMap_footer.css",
#     all_files = F
#   )}
mapFooterWord <- function(category){
  switch(
    category,
    "公職考試"={
      "備註：課程規劃以經建行政考科為主點擊右側了解更多考試資訊"
    },
    "研究所"="備註：課程規劃以經研所考科為主"
  )
}
mapFooterIcon <- function(category){
  switch(
    category,
    "公職考試"={
      "lib/econApp-1.0.0/img/iconTest.svg"
    },
    "研究所"="lib/econApp-1.0.0/img/iconSearch.svg"
    )
}

#classMap_footer() |> econWeb::browseTag2()

