
# Current tab index
tabIndex <- reactiveVal(0)

# Add Tab
observeEvent(input$newTab, {
  
  tabIndex(tabIndex() + 1)
  
  appendTab("EditTabs", tabPanel(tabIndex(), 
                                 
                               textAreaInput(inputId = paste0("tab3-server",tabIndex()),
                                             label = paste("Tab ",tabIndex(), "server.R"),
                                             value = paste("I'm tab", tabIndex()),
                                             width = "50%",
                                             height = "100%",
                                             resize = "both"),
                               
                               textAreaInput(inputId = paste0("tab3-ui",tabIndex()),
                                             label = paste("Tab ",tabIndex(), "ui.R"),
                                             value = paste("I'm tab", tabIndex()),
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
  
  # Save config
  #  - Load configuration file orginal
  temp_config <- yaml::yaml.load_file(system.file("source/config.yaml", package = "ShinyWizard"))
  #  - Edit original variables
  temp_config$AppTitle <- input$tab2-AppTitleInput
  
  print(temp_config)
  
  
  # # Temp dir tabs
  # dir.create(paste0(TempPath,"/tabs/"), showWarnings = FALSE)
  
  
  
})

