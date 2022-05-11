#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

source("global.R")

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    useShinyjs(),
    # Application title
    titlePanel(windowTitle = "LncRna App",
    fluidRow(
        column(11, "LncRna App"), 
        column(1, img(height =60, width = 60, src = "img/logo.png"))
    )),
    
    # Navigation Bar
    navbarPage("" , id = "NavBar", theme = shinytheme("flatly"), 
               tabPanel("Start", value = "p1",
                        HTML('<h1>Welcome!</h1>
                              <p>If youre seeing this page, that means lncRna is installed and running. <strong>Congratulations!</strong> </p>
                            '),
                        div(style="display: flex; 
                                   justify-content: center; 
                                   align-items: center; ", 
                            actionButton('jumpTop2', 'Start')),
                        ),
               tabPanel("Step I", value = "p2",
                        # Sidebar with a slider input for number of bins
                        sidebarLayout(
                            sidebarPanel(
                                sliderInput("bins",
                                            "Number of bins:",
                                            min = 1,
                                            max = 50,
                                            value = 30)
                            ),
                            
                            # Show a plot of the generated distribution
                            mainPanel(
                                plotOutput("distPlot")
                            )
                        ),
                        actionButton('jumpTop3', 'Next')
               ),
               tabPanel("Step II", value = "p3",
                        h2("Description 2"),
                        actionButton('jumpTop4', 'Next')
               ),
               tabPanel("Step III", value = "p4", 
                        h2("Description 3")
               )
    ),
))
