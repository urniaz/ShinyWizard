#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#


# Source Env
source("global.R")

# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
    
    # Source server functions directory
    sapply(paste0("R/server/",list.files("R/server")), source)
    
    # Source tabs functions directory
    sapply(paste0("R/tabs/",list.files("R/tabs"),"/server.R"), source)
    
    # Observe Events on Next Prev Buttons
    observe_event_next_prev_buttons(input, output, session)
    
})
