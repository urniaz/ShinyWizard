
# Current tab index
tabIndex <- reactiveVal(0)

# Add Tab
observeEvent(input$newTab, {
  
  tabIndex(tabIndex() + 1)
  
  appendTab("EditTabs", tabPanel(tabIndex(), 
                                 
                               textAreaInput(inputId = paste0("tab3-server",tabIndex()),
                                             label = paste("Tab ",tabIndex(), "server.R"),
                                             value = "",
                                             width = "50%",
                                             height = "100%",
                                             resize = "both"),
                               
                               textAreaInput(inputId = paste0("tab3-ui",tabIndex()),
                                             label = paste("Tab ",tabIndex(), "ui.R"),
                                            value = paste("# --- Navigation ---
# TabName: Tab", tabIndex(),
"# TabIcon: file
# --- Next/Prev buttons
# ShowButtons: TRUE
# ButtonsAlignment: center
# --- Info ---
# InfoTitle: Tab", tabIndex(),
"# InfoMessage: Info about tab"),
                                             width = "50%",
                                             height = "100%",
                                             resize = "both")
                               ), 
            select=TRUE)
})

# Delete Tab --- >
observeEvent(input$removeTab, {
    
    ask_confirmation(
    inputId = "DelTabConfirmation",
    title = paste("Want to",as.character(input$EditTabs)," delete ?")
  )
})

observeEvent(input$DelTabConfirmation, {
    removeTab("EditTabs", target=input$EditTabs)
})
# <---

# Run projects
observeEvent(input$runTabs, {
  
  # Copy source code to temp
  TempProjPath <- paste0(tempdir(),"/SWTempProj/") 
  
  #save_config.yaml(input, output, session)
  # done on trigger function
  
  # Temp dir tabs
  tabs_dir <- paste0(TempPath,"/tabs/")
  dir.create(tabs_dir, showWarnings = FALSE)
  
  # for (i in 1:tabIndex()){
  #   
  #   try( 
  #     
  #     
  #     
  #   )
  #   
  #   
  #   
  # }
  
  # Run project
  RunShinyWizard(loc = TempProjPath)
  
})

