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
             pillButton(state, number)
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
# {
# if(A){
#   pillButton1(...) -> pillBtn
# } else {
#   pillButton2(...) -> pillBtn
# }
# pillBtn
# }

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



equipmentCard <- function(eqpt="電子閱讀器", state="借用", number=NULL, dependency=NULL){
  tagList(tag_equipmentCard(eqpt, state, number), equipmentCard_dependency(), dependency)
}

#equipmentCard() |> econWeb::browseTag2()

