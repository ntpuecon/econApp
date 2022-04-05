footer2 <- function(onType="首頁", dependency=NULL){
  tagList(tag_footer2(onType), footer2_dependency(), dependency)
}
tag_footer2 <-function(onType="首頁"){
  types=c("首頁","找人", "找事/物","經濟數據")
  purrr::map(
      types,
      tag_footerButton
    ) -> list_tags_footerButton
  which(types==onType) -> whichIsOn
  list_tags_footerButton[[whichIsOn]] <-
    tag_footerButton(onType, type="on")
  tags$div(class = "footer",
    list_tags_footerButton
    )
}
inversemapname <- function(icon){
  .names=c("首頁","找人", "找事/物","經濟數據")
  .icons=c("home","findPerson","findThings","econData")
  names(.names) = .icons
  .names[icon]
}
mapname = function(types){
  c("首頁"="home","找人"="findPerson", "找事/物"="findThings","經濟數據"="econData")[types]
}

tag_footerButton <- function(onType, type="off"){
  tags$div(class = "footer-buttonHolderGraph",
    mask_btn(
      mapname(onType), type),
    tags$div(class = "footer-buttonHolderGraph-text",
      onType))
}

# footer2() |> econWeb::browseTag2()
