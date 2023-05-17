box::use(
  shiny[...],
  bslib[...],
  bsicons[...],
  shiny.semantic[...]
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  shinyUI(semanticPage(
    card(
      div(class="card-content",
        div(class="card-header", "Total Applications"),
        br(),
        div(class="card-meta", 
            span(class="card-large-bold-number", "5672"),
        ),
        div(class="card-description", bs_icon("arrow-up-right-circle-fill"), "\t +14% Inc.")
        )
    )
  ))
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
  })
}