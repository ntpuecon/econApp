#' 器材借用 按鈕, 無數量
#'
#' @param state a character. 借用or無法借用
#' @param dependency
#'
#' @return
#' @export
#'
#' @examples none.
simplePillButton <- function(state="借用", dependency=NULL){
  tagList(tag_simplePillButton(state), simplePillButton_dependency(), dependency)
}


# helper ------------------------------------------------------------------



fig_simplePillButton <- function() {
  fig <- econWeb::Fig()
  fig$export("inst/assets/css/simplePillButton")
}
tag_simplePillButton <-function(state){
  tags$div(class = "simplePillButton",
           style = htmltools::css(`background-color`= simpleIconState(state)),
           tags$div(class = "simplePillButton-availability", state))
}
# simplePillButton_dependency <- function(){
#   htmltools::htmlDependency(
#     name="econApp",
#     version="1.0.0",
#     src=c(file=system.file("/assets/css", package = "econApp")),
#     style="simplePillButton.css",
#     all_files = F
#   )}

simpleIconState <- function(state){
  switch(
    state,
    "借用"={
      "#27AE60"
    },
    "無法借用"="#828282")
}

#simplePillButton() |> econWeb::browseTag2()

