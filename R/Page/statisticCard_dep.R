src_filepth = function(){
  system.file("assets/css", package="econApp")
}
src_filepthImg = function(){
  system.file("assets/img", package="econApp")
}
statisticCard_dependency <- function(){
  htmltools::htmlDependency(
    name="statisticCard",
    version="1.0.0",
    src=c(file=src_filepth()),
    style="statisticCard.css",
    all_files = F
  )}
statisticCardContentFrame_dependency <- function(){
  htmltools::htmlDependency(
    name="statisticCardContentFrame",
    version="1.0.0",
    src=c(file=src_filepth()),
    style="statisticCardContentFrame.css",
    all_files = F
  )}
statisticContentFrame_dependency <- function(){
  htmltools::htmlDependency(
    name="statisticContentFrame",
    version="1.0.0",
    src=c(file=src_filepth()),
    style="statisticContentFrame.css",
    all_files = F
  )}
titleFrame_dependency <- function(){
  htmltools::htmlDependency(
    name="titleFrame",
    version="1.0.0",
    src=c(file=src_filepth()),
    style="titleFrame.css",
    all_files = F
  )}
