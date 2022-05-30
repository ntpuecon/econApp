#' 講座卡片
#'
#' @param department a character. 服務單位
#' @param lecturer a character. 講者
#' @param topic a character. 主題
#' @param date a character. 日期
#' @param dependency
#'
#' @return
#' @export
#'
#' @examples none.
lectureCard <- function(department="臺北大學經濟學系",
                        lecturer="劉曦敏",
                        topic="Migrants from a Different Shore: Earnings and Economic Assimilation of Immigrants from China in the United States",
                        date="5/24", dependency=NULL){
  tagList(tag_lectureCard(date, department, lecturer, topic), lectureCard_dependency(), dependency)
}


# helper ------------------------------------------------------------------



fig_lectureCard <- function() {
  fig <- econWeb::Fig()
  fig$export("inst/assets/css/lectureCard")
}

tag_lectureCard <-function(date, department, lecturer, topic){
  tags$div(class = "lectureCard",
           tags$div(class = "lectureCard-info",
                    calendar(date),
                    tags$div(class = "lectureCard-info-word",
                             tags$div(class = "lectureCard-info-word-department", department),
                             tags$div(class = "lectureCard-info-word-lecturer", lecturer),
                             tags$div(class = "lectureCard-info-word-topic", topic))),
           tags$div(class = "lectureCard-icon",
                    tags$img(
                      src="lib/econApp-1.0.0/img/iconMeet.svg")
                    ))
}
# lectureCard_dependency <- function(){
#   htmltools::htmlDependency(
#     name="econApp",
#     version="1.0.0",
#     src=c(file=system.file("/assets/css", package = "econApp")),
#     style="lectureCard.css",
#     all_files = F
#   )}

#lectureCard() |> econWeb::browseTag2()
