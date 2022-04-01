pageHeader_dependency <- function(){
  htmltools::htmlDependency(
    name="econApp",
    version="1.0.0",
    src=c(file=system.file("/assets/css",  package = "econApp")),
    style="pageHeader.css",
    all_files = F
  )}
roundMaskBtn_dependency <- function(){
  htmltools::htmlDependency(
    name="econapp",
    version="1.0.0",
    src=c(file=src_filepth()),
    style="maskbtn.css",
    all_files = T
  )}
page_dependency <- function(){
  htmltools::htmlDependency(
    name="page",
    version="1.0.0",
    src=c(file=src_filepth()),
    style="page.css",
    all_files = F
  )}
footer_dependency <- function(){
  htmltools::htmlDependency(
    name="footer",
    version="1.0.0",
    src=c(file=src_filepth()),
    # c(href="https://ntpuecon.github.io/econApp/assets/css"),
    style="footer.css",
    all_files = F
  )}
attachment_dependency <- function(){
  htmltools::htmlDependency(
    name="attachment",
    version="1",
    src=c(file=src_filepthImg()),
    # src=c(href="https://ntpuecon.github.io/econApp/assets/img"),
    attachment="",
    all_files = T
  )}
sectionPanel_dependency <- function(){
  tagList(htmltools::htmlDependency(
    name="sectionPanel",
    version="1.0.0",
    src=c(file=src_filepth()),
    style="sectionPanel.css",
    all_files = F
  ),
  htmltools::htmlDependency(
    name="img",
    version=1,
    src=c(file=src_filepthImg()),
    # src=c(href="https://ntpuecon.github.io/econApp/assets/img"),
    attachment = "",
    all_files=T
  )
  )}
