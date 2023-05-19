box::use(
  shiny[...],
  imola[...],
  semantic.dashboard[...]
)

box::use(
  app/view/left_sidebar,
  app/view/midpage
)


#' @export
ui <- function(id) {
  ns <- NS(id)
    dashboardPage(
  dashboardHeader(color = "blue", title = "Dashboard", inverted = TRUE,),
  dashboardSidebar(
    size = "wide", color = "teal",
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
    tabItems(
      selected = 1,
      tabItem(
        tabName = "main",
        box(h1("main"), title = "A b c", width = 16, color = "orange")
      ),
      tabItem(
        tabName = "extra",
          h1("extra")
      )
    )
  )
)

}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
  })
}
