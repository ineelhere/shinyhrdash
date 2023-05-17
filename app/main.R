box::use(
  shiny[...],
)

box::use(
  app/view/left_sidebar
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  fluidPage(
  tags$head(
    tags$meta(charset = "utf-8"),
    tags$meta(name = "viewport", content = "width=device-width"),
    tags$link(rel = "stylesheet", href = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css", integrity = "sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ", crossorigin = "anonymous")
  ),
  tags$body(
    fluidRow(
      column(width = 2,
          left_sidebar$ui(ns("left_sidebar"))),
      column(width = 7,
          h1("2nd")),
      column(width = 3,
          h1("3rd"))
    )
  )
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    left_sidebar$server("left_sidebar")
  })
}
