#' 器材借用 按鈕
#'
#' @param state a character. 借用or無法借用or已借用
#' @param number a character. 數量or無or剩餘天數
#' @param dependency
#'
#' @return
#' @export
#'
#' @examples none.
pillButton <- function(state="借用", number=NULL, dependency=NULL){
  tagList(tag_pillButton(state, number), pillButton_dependency(), dependency)
}


# helper ------------------------------------------------------------------



fig_pillButton <- function() {
  fig <- econWeb::Fig()
  fig$export("inst/assets/css/pillButton")
}

tag_pillButton <-function(state, number){
  tags$div(class = "pillButton",
           tags$div(class = "pillButton-availability",
                    style = htmltools::css(`border-color`= iconState(state)),
                    tags$div(class = "pillButton-availability-icon",
                             tags$img(
                               src=iconImage(state))
                             ),
                    tags$div(class = "pillButton-availability-number", number)),
           tags$div(class = "pillButton-action",
                    style = htmltools::css(`background-color`= iconState(state)),
                    tags$div(class = "pillButton-action-type", state)))
}
# pillButton_dependency <- function(){
#   htmltools::htmlDependency(
#     name="econApp",
#     version="1.0.0",
#     src=c(file=system.file("/assets/css", package = "econApp")),
#     style="pillButton.css",
#     all_files = F
#   )}

iconState <- function(state){
  switch(
    state,
    "借用"={
      "#27AE60"
    },
    "無法借用"="#828282",
    "已借用"="#EB5757")
}

iconImage <- function(state){
  switch(
    state,
    "借用"={
      "lib/econApp-1.0.0/img/iconAvailable.svg"
    },
    "無法借用"="lib/econApp-1.0.0/img/iconUnavailable.svg",
    "已借用"="lib/econApp-1.0.0/img/iconUsing.svg"
  )
}

#pillButton() |> econWeb::browseTag2()
