#' 講座卡片
#'
#' @param topic a character. 主題
#' @param lecturer a character. 講者
#' @param date a character. 日期
#' @param meet a character. 遠距連結有無
#' @param dependency
#'
#' @return
#' @export
#'
#' @examples none.
lectureCard <- function(date="5/24",
                        topic="Migrants from a Different Shore: Earnings and Economic Assimilation of Immigrants from China in the United States",
                        lecturer="臺北大學經濟學系 劉曦敏",
                        meet="Y",
                        dependency=NULL){
  tagList(tag_lectureCard(date, topic, lecturer, meet), lectureCard_dependency(), dependency)
}


# helper ------------------------------------------------------------------



fig_lectureCard <- function() {
  fig <- econWeb::Fig()
  fig$export("inst/assets/css/lectureCard")
}

tag_lectureCard <-function(date, topic, lecturer, meet){
  tags$div(class = "lectureCard",
           tags$div(class = "lectureCard-info",
                    calendar(date),
                    tags$div(class = "lectureCard-info-word",
                             tags$div(class = "lectureCard-info-word-topic", topic),
                             tags$div(class = "lectureCard-info-word-lecturer", lecturer))),
           tags$div(class = "lectureCard-icon",
                    tags$img(
                      src=meetIcon(meet))
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
meetIcon <- function(meet){
  switch(
    meet,
    "Y"={
      "lib/econApp-1.0.0/img/iconMeet.svg"
    },
    "N"=NULL
    )
}


#lectureCard() |> econWeb::browseTag2()
