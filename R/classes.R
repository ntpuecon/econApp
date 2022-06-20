#' Title 生成課程小卡片
#'
#' @param classname a character 課程名稱
#' @param pin "有" or "無"
#' @param back "初始" or "選定" or "先修課"
#' @param dependency default="NULL"
#'
#' @return
#' @export
#'
#' @examples none
classes <- function(classname="總體經濟學",pin="有",back="初始",dependency=NULL){
  tagList(tag_classes(classname,pin,back), classes_dependency(), dependency)
}


# helpers ------------------------------------------------------------------


fig_classes <- function() {
  fig <- econWeb::Fig()
  fig$export("inst/assets/css/classes")
}

tag_classes <-function(classname,pin,back){
  tags$div(class = "classes",
           tags$div(class = "classes-back",
                    style = htmltools::css(`background`=color(back),`border`=line(back))),
           tags$div(class = "classes-pin",
                    style = htmltools::css(`visibility`=state(pin)),
                    tags$div(class = "classes-pin-pinicon",
                             tags$img(src="lib/econApp-1.0.0/img/pinicon.svg"))),
           tags$div(class = "classes-classname",classname))
}

state <- function(pin){
  switch(
    pin,
    "有"={"none"},
    "無"="hidden"
  )
}

color <- function(back){
  switch(
    back,
    "初始"={"none"},
    "選定"="#FFFFFF",
    "先修課"="#2F80ED"
  )
}

line <- function(back){
  switch(
    back,
    "初始"={"none"},
    "選定"="3px #2F80ED solid",
    "先修課"="none"
  )
}


#classes_dependency <- function(){
#  htmltools::htmlDependency(
#    name="classes",
#    version="1.0.0",
#    src=c(file=normalizePath("./inst/assets/css")),
#    style="classes.css",
#    all_files = F
#  )}
#classes() |> browseTag2()






