box::use(
  shiny[...],
  bslib[...],
  bsicons[...],
  imola[...]
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  gridPanel(
  tags$div(
    class = "container",
    tags$input(
      type = "text",
      name = "text",
      class = "input",
      placeholder = "Search"
    ),
    tags$button(
      class = "search__btn",
      bs_icon("search")
    )
  )
)
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
  })
}
