box::use(
    ggplot2[...],
    plotly[...]
)

acquisitions <- function(){
    # Create the data frame
    data <- data.frame(
    Category = c("Applications", "Shortlisted", "Rejected", "On hold", "Finalised"),
    Percentage = c(80, 55, 47, 35, 24),
    Color = c("blue", "yellow", "orange", "purple", "green")
    )

    # Specify the order of categories
    data$Category <- factor(data$Category, levels = c("Finalised", "On hold", "Rejected", "Shortlisted", "Applications"))

    # Create the ggplot bar chart
    gg <- ggplot(data, aes(x = Category, y = Percentage)) +
    geom_bar(stat = "identity", aes(fill = Color), width = 0.4, color = "white", size = 0.5) +
    coord_flip() +
    scale_fill_identity() +
    theme_minimal() +
    theme(panel.grid.major.y = element_blank(),
            panel.border = element_blank(),
            axis.text.y = element_text(size = 10, hjust = 0),
            axis.title.x = element_blank(),
            axis.title.y = element_blank(),
            plot.title = element_text(size = 14, hjust = 0.5, margin = margin(b = 15)),
            legend.position = "none") +
    geom_bar(stat = "identity", width = 0.4, color = "white", size = 0.5, fill = "white", position = position_dodge(width = 0.4)) +
    geom_bar(stat = "identity", width = 0.4, color = "white", size = 0.5, fill = data$Color, position = position_dodge(width = 0.4), show.legend = FALSE) +
    geom_text(aes(label = paste0(Percentage, "%")), vjust = 0.5, hjust = 0.5, size = 4, color = "black", position = position_dodge(width = 0.4)) # Adjusted hjust to 0.5

    # Convert ggplot to Plotly
    return(ggplotly(gg) %>% layout(xaxis = list(showticklabels = FALSE), yaxis = list(showgrid = FALSE, zeroline=FALSE)))



}