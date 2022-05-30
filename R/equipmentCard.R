#' 器材借用 卡片
#'
#' @param eqpt a character. "電子閱讀器"or"電腦教室"or"影音錄製室"
#' @param state a character. 借用or無法借用or已借用
#' @param number a character. 數量or無or剩餘天數
#' @param dependency
#'
#' @return
#' @export
#'
#' @examples none.
equipmentCard <- function(eqpt="電子閱讀器", state="借用", number=NULL, dependency=NULL){
  tagList(tag_equipmentCard(eqpt, state, number), equipmentCard_dependency(), dependency)
}


# helper ------------------------------------------------------------------



fig_equipmentCard <- function() {
  fig <- econWeb::Fig()
  fig$export("inst/assets/css/equipmentCard")
}

tag_equipmentCard <-function(eqpt, state, number){
  tagList(
    tags$div(class = "equipmentCard",
             tags$div(class = "equipmentCard-icon",
                      tags$div(class = "equipmentCard-icon-icon",
                               style = htmltools::css(`background-color`= iconStateLight(state)),
                               tags$img(
                                 src=iconCardimage(eqpt))
                      ),
                      tags$div(class = "equipmentCard-icon-iconName", eqpt)),
             {
               if(((eqpt=="電腦教室")|(eqpt=="影音錄製室"))&((state=="借用")|(state=="無法借用"))){
                 simplePillButton(state) -> pillBtn
               } else {
                 pillButton(state, number) -> pillBtn
               }
               pillBtn
              }
             )

  )
}
# equipmentCard_dependency <- function(){
#   htmltools::htmlDependency(
#     name="econApp",
#     version="1.0.0",
#     src=c(file=system.file("/assets/css", package = "econApp")),
#     style="equipmentCard.css",
#     all_files = F
#   )}

iconCardimage <- function(eqpt){
  switch(
    eqpt,
    "電子閱讀器"={
      "lib/econApp-1.0.0/img/iconEbook.svg"
    },
    "電腦教室"="lib/econApp-1.0.0/img/iconPcroom.svg",
    "影音錄製室"="lib/econApp-1.0.0/img/iconVideoroom.svg"
  )
}
iconStateLight <- function(state){
  switch(
    state,
    "借用"={
      "rgba(39, 174, 96, 0.5)"
    },
    "無法借用"="rgba(130, 130, 130, 0.5)",
    "已借用"="rgba(235, 87, 87, 0.5)")
}

#equipmentCard() |> econWeb::browseTag2()
