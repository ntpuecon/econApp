
test = function(..., pin){
  courses= list(...)
  browser()
  courses[[1]]
  courses[[2]]
  courses[[3]]


}

css <- "
#partA, #partB {
height: 100px;
width: 100px
}
.hide {
  opacity: 0.5;
}
"
require(htmltools)

widget = function(..., hide=c("A", "B", "none")){
  courses=list(...)
  hide=match.arg(hide)
  # browser()
  require(htmltools)
  tags$div(
    tags$div(
      id="partA", style=ifelse(hide=="A", "display:none;", ""),
      paste(courses$required, collapse=",")
    ),
    tags$div(
      id="partB", style = ifelse(hide=="B", "display:none;", ""),
      paste(courses$selective, collapse=",")
    )
  ) |>
    tagList(
      tags$style(css)
    )

}

.notselect {
  opacity: 0.3
}

widget(required=c("c1", "c2"), selective=c("a1", "a4"), hide="A") |> econWeb::browseTag2()


