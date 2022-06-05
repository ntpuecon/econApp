#' Title
#'
#' @param category a character. 重要消息", "講座資訊", "器材借用" or "課程地圖"
#' @param dependency
#'
#' @return
#' @export
#'
#' @examples none.
findthingPageContent <- function(dependency=NULL){
  tagList(tag_findthingPageContent(), findthingPageContent_dependency(), dependency)
}


# helper ------------------------------------------------------------------



fig_findthingPageContent <- function() {
  fig <- econWeb::Fig()
  fig$export("inst/assets/css/findthingPageContent")
}
tag_findthingPageContent <-function(){
  tags$div(class = "findthingPageContent", style = htmltools::css(`position`="relative"),
           tags$div(style=htmltools::css(`position`="relative", `width`="100%"), findthing("重要消息")),
           tags$div(style=htmltools::css(`position`="relative", `width`="100%"), findthing("講座資訊")),
           tags$div(style=htmltools::css(`position`="relative", `width`="100%"), findthing("器材借用")),
           tags$div(style=htmltools::css(`position`="relative", `width`="100%"), findthing("課程地圖")))
}
# findthingPageContent_dependency <- function(){
#   htmltools::htmlDependency(
#     name="econApp",
#     version="1.0.0",
#     src=c(file=system.file("/assets/css", package = "econApp")),
#     style="findthingPageContent.css",
#     all_files = F
#   )}

findthingPageContent() |> econWeb::browseTag2()



findthingName <- function(category){
  switch(
    category,
    "重要消息"={"重要消息"},
    "講座資訊"="講座資訊",
    "器材借用"="器材借用",
    "課程地圖"="課程地圖"
  )
}
findthingIcon <- function(category){
  switch(
    category,
    "重要消息"={"lib/econApp-1.0.0/img/iconAnnouncement.svg"},
    "講座資訊"="lib/econApp-1.0.0/img/iconLecture.svg",
    "器材借用"="lib/econApp-1.0.0/img/iconBorrow.svg",
    "課程地圖"="lib/econApp-1.0.0/img/iconClassmap.svg"
  )
}
findthingBack <- function(category){
  switch(
    category,
    "重要消息"={"rgba(242, 153, 74, 0.65)"},
    "講座資訊"="rgba(242, 201, 76, 0.65)",
    "器材借用"="rgba(39, 174, 96, 0.45)",
    "課程地圖"="rgba(47, 128, 237, 0.45)"
  )
}

# findthingPageContent() |> econWeb::browseTag2()

