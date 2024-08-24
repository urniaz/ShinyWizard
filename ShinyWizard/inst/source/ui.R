#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#


# Source Env
source("global.R")

# Load server functions directory
sapply(paste0("core/ui/",list.files("core/ui")), source)

# Define UI 
shinyUI(fluidPage(
    # Include Theme & CSS
    tags$script(src = "https://unpkg.com/sweetalert/dist/sweetalert.min.js"),
    
    # Bootstrap??
    # tags$script(src = 'https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js'),
    
    # Use JS
    useShinyjs(),
    
    # Application Title Panel
    GenTitlePanel(),
    
    # Generate Nav Bar
    GenNavTabsUI(), 
    
    # Footer
    GenFooter()

))
