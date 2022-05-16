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
    # Use JS
    useShinyjs(),
    
    # Application Title Panel
    GenTitlePanel(),
    
    # Generate Nav Bar
    GenNavTabsUI(),
    
    # Footer
    GenFooter()

))
