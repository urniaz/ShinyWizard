tabIndex <- reactiveVal(0)

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

observeEvent(input$removeTab, {
    
    ask_confirmation(
    inputId = "DelTabConfirmation",
    title = paste("Want to",as.character(input$EditTabs)," delete ?")
  )
})

observeEvent(input$DelTabConfirmation, {
    removeTab("EditTabs", target=input$EditTabs)
})
