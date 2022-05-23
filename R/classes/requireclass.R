#' 產生必修課程小卡片
#'
#' @param dependency default=NULL
#'
#' @return
#' @export
#'
#' @examples none.
requireclass <- function(dependency=NULL){
  tagList(tag_requireclass(), requireclass_dependency(), dependency)
}



# helpers -----------------------------------------------------------------


fig_requireclass <- function() {
  fig <- econWeb::Fig()
  fig$export("inst/assets/css/requireclass")
}


tag_requireclass <-function(){
  tags$div(class = "rcourse",
           tags$div(class = "rcourse-back"),
           tags$div(
             class = "rcourse-law",
                    tags$div(
                      class = "rcourse-law-law","商事法")),
           tags$div(
             class = "rcourse-world",
                    tags$div(
                      class = "rcourse-world-pin",
                             tags$img(
                               src = "lib/econApp-1.0.0/img/pinicon.svg")),
                    tags$div(
                      class = "rcourse-world-world","國際經濟學")),
           tags$div(
             class = "rcourse-macro",
                    tags$div(
                      class = "rcourse-macro-pin",
                             tags$img(
                               src = "lib/econApp-1.0.0/img/pinicon.svg")),
                    tags$div(
                      class = "rcourse-macro-macro","總體經濟學")),
           tags$div(
             class = "rcourse-stat",
                    tags$div(
                      class = "rcourse-stat-stat","統計學")),
           tags$div(
             class = "rcourse-public",
                    tags$div(
                      class = "rcourse-public-pin",
                             tags$img(
                               src = "lib/econApp-1.0.0/img/pinicon.svg")),
                    tags$div(
                      class = "rcourse-public-public","公共經濟學")),
           tags$div(
             class = "rcourse-bank",
                    tags$div(
                      class = "rcourse-bank-pin",
                             tags$img(
                               src = "lib/econApp-1.0.0/img/pinicon.svg")),
                    tags$div(
                      class = "rcourse-bank-bank","貨幣銀行學")),
           tags$div(
             class = "rcourse-micro",
                    tags$div(
                      class = "rcourse-micro-pin",
                             tags$img(
                               src = "lib/econApp-1.0.0/img/pinicon.svg")),
                    tags$div(
                      class = "rcourse-micro-micro","個體經濟學")),
           tags$div(
             class = "rcourse-econ",
                    tags$div(
                      class = "rcourse-econ-econ","經濟學原理")),
           tags$div(
             class = "rcourse-title","必修課程"))
}
#requireclass_dependency <- function(){
#  htmltools::htmlDependency(
#    name="requireclass",
#    version="1.0.0",
#    src=c(file=normalizePath("./inst/assets/css")),
#    style="requireclass.css",
#    all_files = F
#  )}



#ui_requireclass() |> browseTag2()

