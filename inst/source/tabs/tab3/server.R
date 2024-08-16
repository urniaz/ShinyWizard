
# Current tab index
tabIndex <- reactiveVal(0)
currentTabIndexes <- reactiveVal()

# Add Tab
observeEvent(input$newTab, {
  
  # Update tab index
  tabIndex(tabIndex() + 1)
  
  # Add current tab 
  currentTabIndexes(c(currentTabIndexes(),tabIndex()))
  
  appendTab("EditTabs", tabPanel(tabIndex(), 
                                 bslib::layout_columns(min_height = "10vw", 
                                   textAreaInput(inputId = paste0("tab3-ui",tabIndex()),
                                                 label = paste("Tab ",tabIndex(), "ui.R"),
                                                 value = paste("# --- Navigation ---",
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
                                                         sep="\n"),     
                                                 
                                                  width = "1000%",
                                                  height = "10vw",
                                                  resize = "both"),

                                    textAreaInput(inputId = paste0("tab3-server",tabIndex()),
                                                  label = paste("Tab ",tabIndex(), "server.R"),
                                                  value = '  output$summary <- renderPrint({
                                                          dataset <- get(input$dataset, "package:datasets")
                                                          summary(dataset)
                                                          })
  
                                                          output$table <- renderTable({
                                                          dataset <- get(input$dataset, "package:datasets")
                                                          dataset
                                                          })',
                                                  width = "100%",
                                                  height = "10vw",
                                                  resize = "both"),
                                   
                                   textAreaInput(inputId = paste0("tab3-config",tabIndex()),
                                                 label = paste("Tab ",tabIndex(), "config.yml"),
                                                 value = ' conf',
                                                 width = "100%",
                                                 height = "10vw",
                                                 resize = "both"),
                                   
                              )), select=TRUE)
})

# Delete Tab --- >
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
    
    removeTab("EditTabs", target=input$EditTabs)
})
# <---


# Run project
observeEvent(input$runTabs, {
  
if (tabIndex() >=1){
 
  # Temp dir tabs clear and save current
  unlink(config$TempProjPathTabs)
  dir.create(tabs_dir, showWarnings = FALSE)
  
   for (i in currentTabIndexes()){
   
     try({
       tabs_dir_n <- paste0(tabs_dir,"tab", i,"/")
       dir.create(tabs_dir_n, showWarnings = FALSE)
       write_file(isolate(input[[paste0("ui",i)]]), paste0(tabs_dir_n, "/ui.R"))
       write_file(isolate(input[[paste0("server",i)]]),paste0(tabs_dir_n, "/server.R"))
        })
     
    }
  
  # Run project
  
  ShinyWizard::RunShinyWizard(loc = config$TempProjPath)

}
})

output$result <- renderText({(paste(currentTabIndexes()))})



