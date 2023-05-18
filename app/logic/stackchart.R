box::use(
    echarts4r[...]
)

stackchart <- function(data){
      # create echarts object
      mychart <- data |> 
        e_charts(day) |> 
        e_bar(total, stack = "grp") |> 
        e_bar(shortlisted, stack = "grp") |> 
        e_bar(rejected, stack = "grp") |> 
        e_bar(hold, stack = "grp")
    
    return(mychart)
}