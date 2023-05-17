box::use(
  shiny[...],
  bslib[...],
  bsicons[...]
)

box::use(
    app/view/searchbar
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  fluidPage(
    fluidRow(
        searchbar$ui(ns("searchbar"))
    )
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
  })
}
