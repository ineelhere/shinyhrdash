box::use(
  shiny[...],
  imola[...],
  semantic.dashboard[...],
  shiny.semantic[...],
  echarts4r[...],
  plotly[...],
)

box::use(
  app/view/left_sidebar,
  app/view/midpage,
  app/logic/stackchart[stackchart],
  app/logic/acquisitions[acquisitions]
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  dashboardPage(
    dashboardHeader(color = "blue", title = "Dashboard", inverted = TRUE,
                    dropdownMenu(type = "notifications",
                                 taskItem("Project progress...", 50.777, color = "red"))),
    dashboardSidebar(
      size = "wide", color = "teal", pushable = TRUE, closable = TRUE,
      sidebarMenu(
        menuItem(
          div(
            class = "left-sidebar",
            left_sidebar$ui(ns("left_sidebar"))
          )
        )
      )
    ),
    dashboardBody(
      gridPanel(
        template = "sidebar-right",
        div(
          midpage$ui(ns("midpage")),
          br(),
          cards( class="two",
          card(class = "stats-card",
            div(class="card-content",
            h3("Statistics of Active Applications"),
            echarts4rOutput(ns("stackchart"))
            )
        ),
        card(
          div(class="card-content",
            h3("Acquisitions"),
            plotlyOutput(ns("acquisitions"))
            )
        ))
        ),
        div("second")
        )
      )
    )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    data <- data.frame(
        day = c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"),
        total = c(120, 140, 150, 130, 110, 100, 90),
        shortlisted = c(80, 90, 70, 80, 60, 50, 40),
        rejected = c(20, 25, 30, 25, 20, 15, 10),
        hold = c(20, 25, 50, 25, 30, 35, 40)
      )

    output$stackchart <- renderEcharts4r({
      stackchart(data)
    })

    output$acquisitions <- renderPlotly({
      acquisitions()
    })
  })
}
