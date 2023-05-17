box::use(
  shiny[...],
  shinydashboard[...],
)

box::use(
  app/view/left_sidebar
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  fluidPage(
    fluidRow(
      column(width = 2,
          left_sidebar$ui(ns("left_sidebar"))),
      column(width = 7,
          h1("2nd")),
      column(width = 3,
          h1("3rd"))
    )
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    left_sidebar$server("left_sidebar")
  })
}
