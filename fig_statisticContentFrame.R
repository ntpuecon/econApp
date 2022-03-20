library(htmltools)
library(econIDV)
library(econWeb)
fig <- Fig()
fig$split_css$`bcInMonth-light-ligtbulb`$remain$`background-image`= NULL #"url(https://ntpuecon.github.io/econApp/assets/img/lightbulb.svg)"
fig$split_css$`bcInMonth-light-ligtbulb`$remain$`background-repeat` <- NULL #="no-repeat"
fig$split_css$`bcInMonth-light-ligtbulb`$remain$border <- NULL

fig$split_css$`bcInMonth-light-lightFrame-lightImg`$remain$background <- NULL #"url(https://ntpuecon.github.io/econApp/assets/img/light.png)"
fig$update_css()
fig$export("assets/css/statisticContentFrame")
