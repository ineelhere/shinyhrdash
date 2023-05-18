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
    cards(class = "three",
    card(
      div(class="card-content",
        div(class="card-header", "Total Applications"),
        br(),
        div(class="card-meta", 
            span(class="card-large-bold-number", "5672"),
        ),
        div(class="card1-description", bs_icon("arrow-up-right-circle-fill"), "\t +14% Inc.")
        )
    ),
    card(
      div(class="card-content",
        div(class="card-header", "Shortlisted Candidates"),
        br(),
        div(class="card-meta", 
            span(class="card-large-bold-number", "3045"),
        ),
        div(class="card2-description", bs_icon("arrow-up-right-circle-fill"), "\t +06% Inc.")
        )
    ),
    card(
      div(class="card-content",
        div(class="card-header", "Rejected Candidates"),
        br(),
        div(class="card-meta", 
            span(class="card-large-bold-number", "1055"),
        ),
        div(class="card3-description", bs_icon("arrow-down-right-circle-fill"), "\t +04% Inc.")
        )
    )
    )
  ))
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
  })
}