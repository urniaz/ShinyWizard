#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

source("global.R")

# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {

    output$distPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white')

    })
    
    observeEvent(input$jumpTop2, {
        showTab( inputId = "NavBar", target = "p2")
        updateTabsetPanel(session, "NavBar",
                          selected = "p2")
    })
    
    observeEvent(input$jumpTop3, {
        showTab( inputId = "NavBar", target = "p3")
        updateTabsetPanel(session, "NavBar",
                          selected = "p3")
    })
    
    observeEvent(input$jumpTop4, {
        showTab( inputId = "NavBar", target = "p4")
        updateTabsetPanel(session, "NavBar",
                          selected = "p4")
    })

    hideTab( inputId = "NavBar", target = "p2")
    hideTab( inputId = "NavBar", target = "p3")
    hideTab( inputId = "NavBar", target = "p4")
    
})
