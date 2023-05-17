box::use(
  shiny[...],
  bsicons[...],
)

box::use(
  app/view/upgrade_card
)

ui <- function(id) {
  ns <- NS(id)
  fluidPage(
    div(class = "left-nav",
      div(class = "logo", 
        img(src = "static/logo.png")
        ),
      div(class = "nav-item selected",
        span(bs_icon("columns-gap"), "Dashboard")
      ),
      div(class = "nav-item",
          span(bs_icon("briefcase"),"Jobs")
        ),
      div(class = "nav-item",
          span(bs_icon("calendar4-event"), "Schedule")
        ),
      div(class = "nav-item",
          span(bs_icon("folder2"), "Documents")
        ),
      div(class = "nav-item",
          span(bs_icon("bar-chart"), "Statistics")
        ),
      div(class = "nav-item",
        span(bs_icon("people"), "Community")
      ),
      div(class = "nav-item",
          span(bs_icon("chat-left"), "Messages")
        ),
      div(class = "nav-item",
          span(bs_icon("box-arrow-right"), "Logout")
        ),
      upgrade_card$ui(ns("upgrade_card"))
    )
  )
}

server <- function(id) {
  moduleServer(id, function(input, output, session) {
    upgrade_card$server("upgrade_card")
  })
}