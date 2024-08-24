#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#


# Source Env
source("global.R")

# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
  
    # Load server functions directory
    sapply(paste0("core/server/",list.files("core/server")), source)
    
    # Load tabs server
    load_tabs_server(input, output, session)
    
    # Observe Events on Next Prev Buttons
    observe_event_next_prev_buttons(input, output, session)

    
    
    # Prevent reload page, reload destroys session 
    shinyjs::runjs("window.onbeforeunload = function() {return false; }") # 'For security reason page reload will destroy shiny session and kill the app. Continue?';}")
    
    # onSessionEnded
    session$onSessionEnded(function() { stopApp() })
    
})
