#' 生成課程地圖(分類和背景)卡片
#'
#' @param sort "研究所" or "公職考試"
#' @param dependency
#'
#' @return
#' @export
#'
#' @examples none
coursemap <- function(sort,dependency=NULL){
  tagList(tag_coursemap(sort), coursemap_dependency(), dependency)
}


# helper -----------------------------------------------------------------


fig_coursemap <- function() {
  fig <- econWeb::Fig()
  fig$export("inst/assets/css/coursemap")
}


tag_coursemap <-function(sort){
  tags$div(class = "coursemap",
           tags$div(class = "coursemap-board",
                    tags$div(class = "coursemap-board-back")),
           tags$div(class = "coursemap-sorts",
                    tags$div(class = "coursemap-sorts-school",
                             tags$div(class = "coursemap-sorts-school-backone",
                                      style = htmltools::css(`background-color` = backcolor1(sort))),
                             tags$div(class = "coursemap-sorts-school-textone","研究所")),
                    tags$div(class = "coursemap-sorts-government",
                             tags$div(class = "coursemap-sorts-government-backtwo",
                                      style=htmltools::css(`background-color` = backcolor2(sort))),
                             tags$div(class = "coursemap-sorts-government-texttwo","公職考試"))))
}

backcolor1 <- function(sort){
  switch(
    sort,
    "研究所"={
      "rgba(47, 128, 237, 0.2)"
    },
    "公職考試"="#FFFFFF")
}

backcolor2 <- function(sort){
  switch(
    sort,
    "研究所"={
      "#FFFFFF"
    },
    "公職考試"="rgba(47, 128, 237, 0.2)")
}


#coursemap_dependency <- function(){
#  htmltools::htmlDependency(
#    name="coursemap",
#    version="1.0.0",
#    src=c(file=normalizePath("./inst/assets/css")),
#    style="coursemap.css",
#    all_files = F
#  )}


#coursemap() |> econWeb::browseTag2()






