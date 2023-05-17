box::use(
  shiny[...],
  imola[...],
)

box::use(
    app/view/header_searchbar,
    app/view/card1
)

#' @export
ui <- function(id) {
  ns <- NS(id)
    flexPanel(
        template = "one-three-alternate",
        div(
            header_searchbar$ui(ns("header_searchbar"))
        ),
        div(
            card1$ui(ns("card1"))
        ),
        div(
            card1$ui(ns("card1"))
        ),
        div(
            card1$ui(ns("card1"))
        )
    )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
  })
}