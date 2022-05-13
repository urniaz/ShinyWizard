# Sidebar with a slider input for number of bins
tab4ui <- function(id) {
       
  ns <- NS(id) # Remember to ns() all ids! 
  # <---
  
fluidPage(sidebarLayout(
  sidebarPanel(
    sliderInput(ns("bins"),
                "Number of bins:",
                min = 1,
                max = 50,
                value = 30)
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput(ns("distPlot"))
  )
))

}

tab4ui("tab4")
