box::use(
  shiny[...],
  shiny.semantic[...],
  bsicons[...]
)

#' @export
ui <- function(id){
  ns <- NS(id)
  div(class="right-sidebar-div",
      cards( class = "one",
             card(
               div(class = "right-card-content",
                   img(src = "static/dp.png", class = "profile-picture"),
                   h2("Candace Jules"),
                   p("Director of Recruiting", style = "color: gray;"),
                   p(bs_icon("geo-alt-fill"), "New York, US", style = "color: purple;"),
               ),
               br(),
               div(style = "padding: 10px;",
                   h2("Jobs Posted"),
                   div(class = "job-card",
                       div(class = "job-img", "95"),
                       div(class = "job-textBox",
                           div(class = "job-textContent",
                               p(class = "job-h1", "Sr. Android Developer")),
                           p(class = "job-p", "Total Applications")
                       )
                   ),
                   br(),
                   div(class = "job-card-2",
                       div(class = "job-img-2", "80"),
                       div(class = "job-textBox",
                           div(class = "job-textContent",
                               p(class = "job-h1", "UI/UX Designer")),
                           p(class = "job-p", "Total Applications")
                       )
                   )
               ),
               br(),
               div(style = "padding: 10px;",
                   h2("Reminders"),
                   div(class = "job-card-a",
                       div(class = "job-img-a", bs_icon("bootstrap-reboot")),
                       div(class = "job-textBox-reminder",
                           div(markdown("Your Subscription expires **Today**")),
                           p("Renew Now", style="color:#ff00f2; font-weight: bold;")
                       )
                   ),
                   br(),
                   div(class = "job-card-a",
                       div(class = "job-img-b", bs_icon("file-earmark-text")),
                       div(class = "job-textBox-reminder",
                           div(markdown("There are **4** new applications for")),
                           p("IOS Developer Post", style="color:black; font-weight: bold;")
                       )
                   ),
                   br(),
                   div(class = "job-card-a",
                       div(class = "job-img-c", bs_icon("x-circle")),
                       div(class = "job-textBox-reminder",
                           div(markdown("You have closed the job post for")),
                           p("Design Lead", style="color:black; font-weight: bold;")
                       )
                   ),
                   br(),
                   div(class = "job-card-a",
                       div(class = "job-img-d", bs_icon("folder")),
                       div(class = "job-textBox-reminder",
                           div(markdown("You have drafted a job post for")),
                           p("Web Developer", style="color:black; font-weight: bold;")
                       )
                   )
               ),
             )

      )
  )
}
