
# Current tab index
tabIndex <- reactiveVal(0)

# Add Tab
observeEvent(input$newTab, {
  
  tabIndex(tabIndex() + 1)
  
  appendTab("EditTabs", tabPanel(tabIndex(), 
                                 bslib::layout_columns(
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
                                                  height = "100%",
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
                                                  height = "100%",
                                                  resize = "both"),
                                   
                                   textAreaInput(inputId = paste0("tab3-config",tabIndex()),
                                                 label = paste("Tab ",tabIndex(), "config.yml"),
                                                 value = ' conf',
                                                 width = "100%",
                                                 height = "100%",
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
    # unlink(paste0(config$TempProjPath, "tabs/tab", input$EditTabs), recursive=TRUE, force = TRUE) # <-?
    input[[paste0("ui",i)]] <- NULL
    input[[paste0("server",i)]] <- NULL
    removeTab("EditTabs", target=input$EditTabs)
})
# <---

# Run project
observeEvent(input$runTabs, {
  
if (tabIndex() >=1){
 
  # Temp dir tabs
  tabs_dir <- paste0(config$TempProjPathTabs)
  dir.create(tabs_dir, showWarnings = FALSE)
  
   for (i in 1:tabIndex()){
   
     try({
       tabs_dir_n <- paste0(tabs_dir,"tab", i,"/")
       dir.create(tabs_dir_n, showWarnings = FALSE)
       write_file(isolate(input[[paste0("ui",i)]]), paste0(tabs_dir_n, "/ui.R"))
       write_file(isolate(input[[paste0("server",i)]]),paste0(tabs_dir_n, "/server.R"))
        })
     
    }
  
  # Run project
  
  ShinyWizard::RunShinyWizard(loc = TempProjPath)

}
})

