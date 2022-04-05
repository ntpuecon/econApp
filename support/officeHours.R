session = econWeb::webdriverChromeSession()
session$start_session()
session$go("https://cof.ntpu.edu.tw/pls/faculty/room_arrange.tecohours")
sea_username=Sys.getenv("sea_username")
sea_password=Sys.getenv("sea_password")
session$executeScript(
  glue::glue(
    htmltools::includeHTML("support/officehour.js"))
)
session$executeScript(
    htmltools::includeHTML("support/officehour2.js")
)
table=session$executeScript('
  table=document.querySelector("body > center > table");
  return table;
  ')
# table$getText() |> clipr::write_clip()

officehours <- vector("list",15)
for(i in 2:16){
  officehours[[i-1]] <- vector("list", 7)
  for(j in 2:8){
    queryText <-
      glue::glue('tr=document.querySelector("body > center > table > tbody > tr:nth-child({i}) > td:nth-child({j})");
        return tr;')
    tr_ij = session$executeScript(
      queryText
    )
    if(!is.null(tr_ij)){
      officehours[[i-1]][[j-1]] =
        tr_ij$getText()
    }
  }

}
officehours |>
  jsonlite::toJSON() |>
  xfun::write_utf8("data/officehours.json")
session$delete()
session$kill_chrome()
