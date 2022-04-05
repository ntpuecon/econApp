devtools::load_all(".")
library(htmltools)
# 找人 ----
# (1) 找人主頁 ----
Page(pageTitle = "找人") |> econWeb::browseTag2()

# 找事物 ----
# (1) 找事物主頁 ----
Page(pageTitle = "找事/物") |> econWeb::browseTag2()

# 經濟數據 --------------------------------------------------------------------

## (1) 經濟數據主頁----
Page(pageTitle = "經濟數據") |> econWeb::browseTag2()

statCard() |> econWeb::browseTag2()
statCard(title="失業率", content="", color="blue") |> econWeb::browseTag2()

majorStatistics <-
  tagList(
    statCard(color="pink"),
    statCard(title="失業率", content="", color="blue"),
    statCard(title="物價上漲率", content="", color="green"),
    statCard(title="台幣/美元", content="", color="yellow"),
    statCard(color="pink"),
    statCard(title="失業率", content="", color="blue"),
    statCard(title="物價上漲率", content="", color="green"),
    statCard(title="台幣/美元", content="", color="yellow")

  )

Page(pageTitle = "經濟數據", content = majorStatistics) |>
  econWeb::browseTag2()
