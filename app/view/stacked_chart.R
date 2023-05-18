box::use(
  shiny[...],
  imola[...],
  bsicons[...],
  echarts4r[...],
  shiny.semantic[...]
)

box::use(
  app/logic/stackchart[stackchart]
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  gridPanel(
    h1("hello"),
    echarts4rOutput(ns("stackchart"))
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    output$stackchart <- renderEcharts4r({
      stackchart()
    })
  })
}