box::use(
    echarts4r[...],
    dplyr[...]
)

areachart <- function(){
    hours <- 8:20

    # Create a vector of percentages
    percentages <- c(50, 45, 60, 55, 60, 70, 90, 80, 75, 70, 60, 65, 70)

    # Create the dataframe
    df <- data.frame(Hour = hours, Percentage = percentages)
    p <-  e_charts(df, Hour) %>%
    e_area(Percentage, stack = "Percentage", itemStyle = list(color = "red")) %>%
    e_legend(show = TRUE) %>%
    e_tooltip(show = TRUE, trigger = "axis") %>%
    e_x_axis(name = "Hour", min = min(df$Hour), max = max(df$Hour)) %>%
    e_y_axis(name = "Percentage")

    return(p)
}