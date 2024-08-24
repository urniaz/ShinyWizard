
# -- Current tab index --- >
tabIndex <- reactiveVal(0)
currentTabIndexes <- reactiveVal()


# -- Add Tab --- >

observeEvent(input$newTab, {
  
  uiContent <-  paste("# --- Navigation ---",
        paste0("# TabName: Tab", tabIndex()),
        "# TabIcon: file",
        "# --- Next/Prev buttons",
        "# ShowButtons: TRUE",
        "# ButtonsAlignment: center",
        "# --- Info ---",
        paste0("# InfoTitle: Tab", tabIndex()),
        "# InfoMessage: Info about tab",
        'fluidPage(
selectInput(ns("dataset"), label = "Dataset", choices = ls("package:datasets")),
                                                          verbatimTextOutput(ns("summary")),
                                                          tableOutput(ns("table"))
                                                          )',
        sep="\n")
  
  serverContent <- '  output$summary <- renderPrint({
                                                          dataset <- get(input$dataset, "package:datasets")
                                                          summary(dataset)
                                                          })
  
                                                          output$table <- renderTable({
                                                          dataset <- get(input$dataset, "package:datasets")
                                                          dataset
                                                          })'
  
  configContent <- ' # --- Navigation ---
                     # TabName: Tab Name
                      # TabIcon: paper
                         # --- Next/Prev buttons
                        # ShowButtons: TRUE
                     # --- Info ---
                    # InfoTitle: Information
                      # InfoMessage: Some info text'
  
  AddNewTab(serverContent, uiContent, configContent)
  
  # Save all tabs
  SaveAllTabs(input, output, session, currentTabIndexes())
})

  
AddNewTab <- function(serverContent, uiContent, configContent){

  # Update tab index
  tabIndex(tabIndex() + 1)
  
  # Add current tab 
  currentTabIndexes(c(currentTabIndexes(),tabIndex()))
  
  appendTab("EditTabs", tabPanel(tabIndex(), 
                                 bslib::layout_columns(min_height = "10vw", 
                                   textAreaInput(inputId = paste0("tab3-ui",tabIndex()),
                                                 label = paste("Tab ",tabIndex(), "ui.R"),
                                                 value = uiContent,     
                                                 width = "1000%",
                                                 height = "18vw",
                                                 resize = "both"),

                                    textAreaInput(inputId = paste0("tab3-server",tabIndex()),
                                                  label = paste("Tab ",tabIndex(), "server.R"),
                                                  value = serverContent,
                                                  width = "100%",
                                                  height = "18vw",
                                                  resize = "both"),
                                   
                                   textAreaInput(inputId = paste0("tab3-config",tabIndex()),
                                                 label = paste("Tab ",tabIndex(), "config.yml"),
                                                 value = configContent,
                                                 width = "100%",
                                                 height = "18vw",
                                                 resize = "both"),
                                   
                              )), select=TRUE)
}

# -- Delete Tab --- >

observeEvent(input$removeTab, {
    
    shinyWidgets::ask_confirmation(
        inputId = "DelTabConfirmation",
        title = paste("Are you sure to delete ",as.character(input$EditTabs)," ?")
  )
})

observeEvent(input$DelTabConfirmation, {
    
    # read current
      temp <- currentTabIndexes()
      temp <- temp[ !temp == as.numeric(as.character(input$EditTabs))]
      
    # exclude deleted
      currentTabIndexes(c(temp))
    
    # Save all tabs
    SaveAllTabs(input, output, session, currentTabIndexes())
      
    removeTab("EditTabs", target=input$EditTabs)
})


# -- Save project --- >

observeEvent(input$saveTabs, {
  
  # Save all tabs
  SaveAllTabs(input, output, session, currentTabIndexes())
  
})

# -- Run project --- >

observeEvent(input$runTabs, {
 
  # Save all tabs
  SaveAllTabs(input, output, session, currentTabIndexes())
    
  # Run project
  ShinyWizard::RunShinyWizard(loc = config$TempProjPath)

})


# output$result <- renderText({(paste(currentTabIndexes()))})




