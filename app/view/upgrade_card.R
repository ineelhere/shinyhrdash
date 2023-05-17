box::use(
  shiny[...],
)

ui <- function(id) {
  ns <- NS(id)
  fluidPage(
  tags$div(
    class = "card",
    tags$div(
      class = "content",
      tags$div(
        class = "title",
        "Premium"
      ),
      tags$div(
        class = "price",
        "$99"
      ),
      tags$div(
        class = "description",
        "Go Pro to unlock more features"
      )
    ),
    tags$button(
      "Upgrade"
    )
  )
)
}

server <- function(id) {
  moduleServer(id, function(input, output, session) {
  })
}