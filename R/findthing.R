  #' Title
  #'
  #' @param category a character. 重要消息", "講座資訊", "器材借用" or "課程地圖"
  #' @param dependency
  #'
  #' @return
  #' @export
  #'
  #' @examples none.
  findthing <- function(category="重要消息", dependency=NULL){
    tagList(tag_findthing(category), findthing_dependency(), dependency)
  }


  # helper ------------------------------------------------------------------



  fig_findthing <- function() {
    fig <- econWeb::Fig()
    fig$export("inst/assets/css/findthing")
  }
  tag_findthing <- function(category){
    tagList(
      tags$div(class = "findthing", style = htmltools::css(`background`=findthingBack(category)),
               tags$div(class = "findthing-name",findthingName(category)),
               tags$div(class = "findthing-icon",
                        tags$img(src=findthingIcon(category))))
    )
  }

  # findthing_dependency <- function(){
  #   htmltools::htmlDependency(
  #     name="econApp",
  #     version="1.0.0",
  #     src=c(file=system.file("/assets/css", package = "econApp")),
  #     style="findthing.css",
  #     all_files = F
  #   )}
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

  # findthing() |> econWeb::browseTag2()

