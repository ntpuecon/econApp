#' 講座 日期
#'
#' @param date a character. 日期
#' @param dependency
#'
#' @return
#' @export
#'
#' @examples none.
calendar <- function(date, dependency=NULL){
  tagList(tag_calendar(date), calendar_dependency(), dependency)
}


# helper ------------------------------------------------------------------



fig_calendar <- function() {
  fig <- econWeb::Fig()
  fig$export("inst/assets/css/calendar")
}

tag_calendar <-function(date){
  tags$div(class = "calendar",
           tags$div(class = "calendar-date",
                    tags$div(class = "calendar-date-number", date)))
}
# calendar_dependency <- function(){
#   htmltools::htmlDependency(
#     name="econApp",
#     version="1.0.0",
#     src=c(file=system.file("/assets/css", package = "econApp")),
#     style="calendar.css",
#     all_files = F
#   )}

#calendar() |> econWeb::browseTag2()

