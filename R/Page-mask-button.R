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
