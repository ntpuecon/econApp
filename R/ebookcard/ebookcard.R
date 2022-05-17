fig_ebookcard <- function() {
  fig <- econWeb::Fig()
  fig$export("inst/assets/css/ebookcard")
}
fig_ebookcardUpdate <- function(){
  fig$split_css$`pill-action`$remain$width <- NULL
  fig$update_css()
  fig$export("inst/assets/css/ebookcard")
}
tag_ebookcard <-function(number){
  tagList(
    tags$div(class = "ebookcard",
      tags$div(class = "ebookcard-icon",
        tags$div(class = "ebookcard-icon-icon",
          tags$img(src="/lib/econApp-1.0.0/img/iconEbook.svg")),
        tags$div(class = "ebookcard-icon-iconName","電子閱讀器")),
      pill(number))
  )
}
pill = function(number){
  tags$div(class = "pill",
    tags$div(class = "pill-availability",
      tags$div(class = "pill-availability-icon",
        tags$img(src="lib/econApp-1.0.0/img/iconAvailable.svg")),
      tags$div(class = "pill-availability-number", number)),
    tags$div(class = "pill-action",
      tags$div(class = "pill-action-type","借用")))
}
# ebookcard_dependency <- function(){
#   htmltools::htmlDependency(
#     name="econApp",
#     version="1.0.0",
#     src=c(file=system.file("/assets/css",  package = "econApp")),
#     style="ebookcard.css",
#     all_files = F
#   )}
ui_ebookcard <- function(...,dependency=NULL){
  tagList(tag_ebookcard(...), ebookcard_dependency(), dependency)
}
ebookcard = function(number){
  ui_ebookcard(number=number)
}
# ui_ebookcard() |> econWeb::browseTag2()
