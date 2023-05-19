box::use(
    echarts4r[...],
    dplyr[...]
)

donut <- function(){
    p <- e_charts(data.frame(Gender = c("Male", "Female"),
                         Percentage = c(40, 60)), Gender) %>%
  e_pie(Percentage, radius = c("50%", "70%"),
        label = list(show = FALSE),
        emphasis = list(label = list(show = TRUE))) %>%
  e_tooltip(show = TRUE, trigger = "item", formatter = '{b}: {c}%') %>%
  e_legend(show = TRUE) %>%
  e_color(c("#3b7dd4", "#ff5e00"))

    return(p)
}