#' Title 生成課程地圖課程背景小卡片
#'
#' @param sort a character "必修課程" or "選修課程"
#' @param classtype a character "全部課程" or "先修課程"
#' @param dependency default=NULL
#' @return
#' @export
#' @examples none
classMap_smallBoard <- function(sort="選修課程",classtype="先修課程",dependency=NULL){
  tagList(tag_classMap_smallBoard(sort,classtype), classMap_smallBoard_dependency(), dependency)
}

# helpers -----------------------------------------------------------------


fig_classMap_smallBoard <- function() {
  fig <- econWeb::Fig()
  fig$export("inst/assets/css/classMap_smallBoard")
}

tag_classMap_smallBoard <-function(sort,classtype){
  tags$div(class = "board",
           tags$div(class = "board-back"),
           tags$div(class = "board-prerequisites",
                    style = htmltools::css(`visibility`= state(classtype)),
                    tags$div(class = "board-prerequisites-board"),
                    tags$div(class = "board-prerequisites-text","先修課程")),
           tags$div(class = "board-type",sort))

}

state <- function(classtype){
  switch(
    classtype,
    "全部課程"={"hidden"},
    "先修課程"="none"
  )
}

#classMap_smallBoard_dependency <- function(){
#  htmltools::htmlDependency(
#    name="classMap_smallBoard",
#    version="1.0.0",
#    src=c(file=normalizePath("./inst/assets/css")),
#    style="classMap_smallBoard.css",
#    all_files = F
#  )}
#classMap_smallBoard() |> browseTag2()

