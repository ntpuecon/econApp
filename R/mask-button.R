mask_btn=function(icon="home", type="off"){
  require(htmltools)
  withTags(
    div(
      class=paste("mask-btn", icon, type),
      div(
        class="mask-group",

        div(
          class="mask-image",
          div(
            class="mask-color"
          )
        )
      )
    )
  ) |>
    tagList(
      maskBtn_dependency()
    )
}
maskBtn_dependency <- function(){
  htmltools::htmlDependency(
    name="econApp-maskBtn",
    version="1.0.0",
    src=c(
      file=system.file("assets/css", package="econApp")
    ),
    style="maskBtn2.css"
  )
}
