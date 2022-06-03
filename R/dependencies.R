#' Attach materialise, jquery, google font icon and mobile dependencies
#'
#' @param tag a tag
#'
#' @return a tag
#' @export
useMaterialise <- function(tag){
  htmltools::attachDependencies(
    tag,
    allDep
  )
}
ebookcard_dependency <-econData_dependency <- pageHeader_dependency<-maskBtn_dependency <- footer2_dependency <- page_dependency <- function(){
  htmltools::htmlDependency(
    name="econApp",
    version="1.0.0",
    src=c(file=system.file("/assets",  package = "econApp")),
    style=c("css/page-master.css","css/statisticCard-master.css", "css/econData.css", "css/ebookcard.css"),
    all_files = T
  )}

dep_ios <- function(){
  econWeb::htmlDependency2(
    name="ios-app",
    version="0.0.1",
    meta = list(
      `apple-mobile-web-app-capable`="yes",
      `apple-mobile-web-app-status-bar-style`="black"
    )
  )
}

