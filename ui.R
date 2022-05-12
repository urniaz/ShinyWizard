#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#


# Source Env
source("global.R")

# Source Directory
sapply(paste0("R/ui/",list.files("R/ui")), source)

# Define UI 
shinyUI(fluidPage(
    # Use JS
    useShinyjs(),
    
    # Application Title Panel
    GenTitlePanel(),
    
    # Generate Nav Bar
    GenNavTabsUI()

))
