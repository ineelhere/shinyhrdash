box::use(
  shiny[...],
  bsicons[...],
)

ui <- function(id) {
  ns <- NS(id)
  fluidPage(
    div(class = "left-nav",
      div(class = "logo", 
        img(src = "static/logo.png")
        ),
      br(),
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
      div(
      class = "premium-card",
      div(
        class = "premium-content",
        p(class = "heading", "Upgrade to Premium"),
        p(class = "para", "Go Pro to unlock more features"),
        tags$button(class = "premium-btn", "UPGRADE")
      )
    )
    )
  )
}

server <- function(id) {
  moduleServer(id, function(input, output, session) {
  })
}