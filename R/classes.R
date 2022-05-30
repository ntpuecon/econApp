#' 生成課程地圖(課程名稱)小卡片
#'
#' @param class1 a character 課程名稱例如"經濟學原理"(可留空格)
#' @param class2 a character
#' @param class3 a character
#' @param class4 a character
#' @param class5 a character
#' @param class6 a character
#' @param class7 a character
#' @param class8 a character
#' @param type 必修課程 or 選修課程
#' @param dependency
#'
#' @return
#' @export
#'
#' @examples none
classes <- function(class1="經濟學原理",class2="統計學",class3="個體經濟學",class4="國際經濟學",class5="微積分",class6="貨幣銀行學",class7="總體經濟學",class8="公共經濟學",type="必修課程",dependency=NULL){
  tagList(tag_classes(class1,class2,class3,class4,class5,class6,class7,class8,type), classes_dependency(), dependency)
}


# helper ------------------------------------------------------------------




fig_classes <- function() {
  fig <- econWeb::Fig()
  fig$export("inst/assets/css/classes")
}


tag_classes <-function(class1,class2,class3,class4,class5,class6,class7,class8,type){
  tags$div(class = "classes",
           tags$div(class = "classes-classnames",
                    tags$div(class = "classes-classnames-back"),
                    tags$div(class = "classes-classnames-course8",
                             tags$div(class = "classes-classnames-course8-back"),
                             tags$div(class = "classes-classnames-course8-pin",
                                      tags$img(
                                        src="lib/econApp-1.0.0/img/pinicon.svg"
                                        )),
                             tags$div(class = "classes-classnames-course8-text8",class8)),
                    tags$div(class = "classes-classnames-course7",
                             tags$div(class = "classes-classnames-course7-back"),
                             tags$div(class = "classes-classnames-course7-pin",
                                      tags$img(
                                        src="lib/econApp-1.0.0/img/pinicon.svg"
                                      )),
                             tags$div(class = "classes-classnames-course7-text7",class7)),
                    tags$div(class = "classes-classnames-course6",
                             tags$div(class = "classes-classnames-course6-back"),
                             tags$div(class = "classes-classnames-course6-pin",
                                      tags$img(
                                        src="lib/econApp-1.0.0/img/pinicon.svg"
                                      )),
                             tags$div(class = "classes-classnames-course6-text6",class6)),
                    tags$div(class = "classes-classnames-course5",
                             tags$div(class = "classes-classnames-course5-back"),
                             tags$div(class = "classes-classnames-course5-pin",
                                      tags$img(
                                        src="lib/econApp-1.0.0/img/pinicon.svg"
                                      )),
                             tags$div(class = "classes-classnames-course5-text5",class5)),
                    tags$div(class = "classes-classnames-course4",
                             tags$div(class = "classes-classnames-course4-back"),
                             tags$div(class = "classes-classnames-course4-pin",
                                      tags$img(
                                        src="lib/econApp-1.0.0/img/pinicon.svg"
                                      )),
                             tags$div(class = "classes-classnames-course4-text4",class4)),
                    tags$div(class = "classes-classnames-course3",
                             tags$div(class = "classes-classnames-course3-back"),
                             tags$div(class = "classes-classnames-course3-pin",
                                      tags$img(
                                        src="lib/econApp-1.0.0/img/pinicon.svg"
                                      )),
                             tags$div(class = "classes-classnames-course3-text3",class3)),
                    tags$div(class = "classes-classnames-course2",
                             tags$div(class = "classes-classnames-course2-back"),
                             tags$div(class = "classes-classnames-course2-pin",
                                      tags$img(
                                        src="lib/econApp-1.0.0/img/pinicon.svg"
                                      )),
                             tags$div(class = "classes-classnames-course2-text2",class2)),
                    tags$div(class = "classes-classnames-course1",
                             tags$div(class = "classes-classnames-course1-back"),
                             tags$div(class = "classes-classnames-course1-pin",
                                      tags$img(
                                        src="lib/econApp-1.0.0/img/pinicon.svg"
                                      )),
                             tags$div(class = "classes-classnames-course1-text1",class1)),
                    tags$div(class = "classes-classnames-type",type)),
           tags$div(class = "classes-prerequisites"))
}
#classes_dependency <- function(){
#  htmltools::htmlDependency(
#    name="classes",
#    version="1.0.0",
#    src=c(file=normalizePath("./inst/assets/css")),
#    style="classes.css",
#    all_files = F
#  )}



#classes() |> econWeb::browseTag2()

