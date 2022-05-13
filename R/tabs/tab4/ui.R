# Sidebar with a slider input for number of bins
tab4ui <- function(id) {
       
  ns <- NS(id) # Remember to ns() all ids! 
  # <---
  
fluidPage(
  fluidRow(column(4, 
    sliderInput(ns("bins"),
                "Number of bins:",
                min = 1,
                max = 50,
                value = 30),
  
    plotOutput(ns("distPlot"))),
    column(8, fluidRow(
                column(6,
                       HTML("<b>fdsafgdsgdsfd</b><hr/>")),
                column(6,
                       HTML("<b>fdsafgdsgdsfd</b><hr/>"))
                )
             )
          )
)
}

tab4ui("tab4")
