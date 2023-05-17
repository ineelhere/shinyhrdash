box::use(
  shiny[...],
)

box::use(
  app/view/left_sidebar,
  app/view/midpage
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  fluidPage(
    fluidRow(
      column(width = 2,
          left_sidebar$ui(ns("left_sidebar"))),
      column(width = 7,
          midpage$ui(ns("midpage"))),
      column(width = 3,
          h1("3rd"))
    )
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    left_sidebar$server("left_sidebar")
    midpage$server("midpage")
  })
}
