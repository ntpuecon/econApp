interna_dependency <- classes_dependency <- classMap_footer_dependency <- clubinfo_dependency <- coursemap_dependency <- lectureCard_dependency <- simplePillButton_dependency <- equipmentCard_dependency <- calendar_dependency <- pillButton_dependency<- requireclass_dependency <-ebookcard_dependency <-econData_dependency <-pageHeader_dependency<-maskBtn_dependency <- footer2_dependency <- page_dependency <- function(){

  htmltools::htmlDependency(
    name="econApp",
    version="1.0.0",
    src=c(file=system.file("/assets",  package = "econApp")),
    style=c("css/page-master.css","css/statisticCard-master.css", "css/econData.css", "css/ebookcard.css","css/requireclass.css", "css/pillButton.css", "css/calendar.css", "css/equipmentCard.css","css/simplePillButton.css", "css/lectureCard.css", "css/coursemap.css","css/clubinfo-master.css", "css/classMap_footer.css", "css/classes.css","css/interna.css"),

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

