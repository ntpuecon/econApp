interna_dependency <- coursemap_dependency <-classes_dependency <- lectureCard_dependency <- equipmentCard_dependency <- pillButton_dependency <- calendar_dependency <- clubinfo_dependency <- ebookcard_dependency <-econData_dependency <- pageHeader_dependency<-maskBtn_dependency <- footer2_dependency <- page_dependency <- function(){
  htmltools::htmlDependency(
    name="econApp",
    version="1.0.0",
    src=c(file=system.file("/assets",  package = "econApp")),
    style=c("css/page-master.css","css/statisticCard-master.css", "css/econData.css", "css/ebookcard.css", "css/clubinfo.css", "css/calendar.css", "css/pillButton.css", "css/equipmentCard.css", "css/lectureCard.css", "css/classes.css", "css/coursemap.css","css/interna.css"),
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

