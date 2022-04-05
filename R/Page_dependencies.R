econData_dependency <- pageHeader_dependency<-maskBtn_dependency <- footer2_dependency <- page_dependency <- function(){
  htmltools::htmlDependency(
    name="econApp",
    version="1.0.0",
    src=c(file=system.file("/assets/css",  package = "econApp")),
    style=c("page-master.css","statisticCard-master.css", "econData.css"),#c("page2.css","footer2.css","maskBtn2.css","pageHeader.css"),
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
# pageHeader_dependency <- function(){
#   htmltools::htmlDependency(
#     name="econApp",
#     version="1.0.0",
#     src=c(file=system.file("/assets/css",  package = "econApp")),
#     style="pageHeader.css",
#     all_files = F
#   )}
# footer2_dependency <- function(){
#   htmltools::htmlDependency(
#     name="econApp-footer2",
#     version="1.0.0",
#     src=c(file=system.file("/assets/css",  package = "econApp")),
#     style="footer2.css",
#     all_files = F
#   )}
#
# maskBtn_dependency <- function(){
#   htmltools::htmlDependency(
#     name="econApp-maskBtn",
#     version="1.0.0",
#     src=c(
#       file=system.file("assets/css", package="econApp")
#     ),
#     style="maskBtn2.css"
#   )
# }
