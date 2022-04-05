App <- function(
  tagListOfStatCards=tagList(
    statCard(color="blue"),
    statCard(color="green"),
    statCard(color="pink"),
    statCard(color="yellow")
)){
  app <- list()
  app$econData = function(){
    Page(
      pageTitle = "經濟數據",
      content=div(
        class="flex-container wrap",
        econData_mainPageContentItems(tagListOfStatCards)
      )
    ) |> tagList(dep_ios())

  }

  return(app)
}
# app |> econWeb::browseTag2()
econData_mainPageContentItems <- function(tagListOfStatCards){
  tagListOfStatCards |> purrr::map(
    ~tags$div(
      class="flex-item", .x
    )
  ) |>
    htmltools::as.tags()
}
