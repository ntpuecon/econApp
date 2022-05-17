#' 產生電子書可借存量小卡片
#'
#' @param number a character. 顯示存量如"5/10"
#' @param dependency default=NULL
#'
#' @return
#' @export
#'
#' @examples none.
ebookcard <- function(number, dependency=NULL){
  tagList(tag_ebookcard(number), ebookcard_dependency(), dependency)
}



# helpers -----------------------------------------------------------------


fig_ebookcard <- function() {
  fig <- econWeb::Fig()
  fig$export("inst/assets/css/ebookcard")
}

tag_ebookcard <-function(number){
  tagList(
    tags$div(class = "ebookcard",
      {tags$div(class = "ebookcard-icon",
        tags$div(class = "ebookcard-icon-icon",
          tags$img(
            src="lib/econApp-1.0.0/img/iconEbook.svg"
          )),
        tags$div(class = "ebookcard-icon-iconName",
          "電子閱讀器"))},
      pill(number)
      ),

  )
}
pill <- function(number) {
  tags$div(
    class = "pill",
    tags$div(
      class = "pill-availability",
      tags$div(
        class = "pill-availability-icon",
        tags$img(
          src = "lib/econApp-1.0.0/img/iconAvailable.svg"
        )
      ),
      tags$div(
        class = "pill-availability-number",
        number
      )
    ),
    tags$div(
      class = "pill-action",
      tags$div(
        class = "pill-action-type",
        "借用"
      )
    )
  )
}


# ui_ebookcard() |> econWeb::browseTag2()
