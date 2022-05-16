# TabName: Intro
# TabIcon: bar-chart-o

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
                       HTML("<b>ui.R</b><hr/>")),
                column(6,
                       HTML("<b>server.R</b><hr/>"))
                )
             )
          )
)
