list.files("/Users/martinl/Github-ntpuecon/econApp/inst/assets/img", full.names = T) -> allImgs
stringr::str_subset(allImgs, "Property 1=") -> oldnames
newnames <-
  stringr::str_replace(
    oldnames,
    "Property 1=", ""
  )
purrr::walk2(
  oldnames, newnames,
  ~file.rename(from= .x, to =.y)
)
