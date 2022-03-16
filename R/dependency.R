roundMaskBtn_dependency <- function(){
  htmltools::htmlDependency(
    name="econapp",
    version="1.0.0",
    src=c(href="https://ntpuecon.github.io/econApp/assets/css"),
    style="maskbtn.css",
    all_files = T
  )}
page_dependency <- function(){
  htmltools::htmlDependency(
    name="page",
    version="1.0.0",
    src=c(href="https://ntpuecon.github.io/econApp/assets/css"),
    style="page.css",
    all_files = F
  )}
footer_dependency <- function(){
  htmltools::htmlDependency(
    name="footer",
    version="1.0.0",
    src=c(href="https://ntpuecon.github.io/econApp/assets/css"),
    style="footer.css",
    all_files = F
  )}
attachment_dependency <- function(){
  htmltools::htmlDependency(
    name="attachment",
    version="1",
    src=c(href="https://ntpuecon.github.io/econApp/assets/img"),
    attachment="",
    all_files = T
  )}
sectionPanel_dependency <- function(){
  tagList(htmltools::htmlDependency(
    name="sectionPanel",
    version="1.0.0",
    src=c(href="https://ntpuecon.github.io/econApp/assets/css"),
    style="sectionPanel.css",
    all_files = F
  ),
  htmltools::htmlDependency(
    name="img",
    version=1,
    src=c(href="https://ntpuecon.github.io/econApp/assets/img"),
    attachment = "",
    all_files=T
  )
  )}
