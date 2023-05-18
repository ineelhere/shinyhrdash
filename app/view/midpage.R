box::use(
  shiny[...],
  bslib[...],
)

box::use(
    app/view/header_searchbar,
    app/view/midpage_card,
)

#' @export
ui <- function(id) {
  ns <- NS(id)
    fluidPage(
        div(
            header_searchbar$ui(ns("header_searchbar"))
        ),
        div(
            midpage_card$ui(ns("midpage_card")),
        )
    )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
  })
}