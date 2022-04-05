fig <- econWeb::Fig()
fig$split_css$`header-content-icon`$remain$background= "url(/lib/attachment-1/ntpuecon.svg);"
fig$split_css$header$remain$width <- NULL
fig$update_css()
fig$export("inst/assets/css/pageHeader")
