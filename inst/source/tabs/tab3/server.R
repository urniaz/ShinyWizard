tabIndex <- reactiveVal(0)

observeEvent(input$newTab, {
  
  tabIndex(tabIndex() + 1)
  
  appendTab("myTabs", tabPanel(tabIndex(), 
                               textAreaInput(inputId = paste0("tab3-server",tabIndex()),
                                             label = paste("Tab ",tabIndex(), "server.R"),
                                             value = paste("I'm tab", tabIndex()),
                                             width = "100%",
                                             height = "100%")
                               ), 
            select=TRUE)
})

observeEvent(input$removeTab, {
   
  res <- ask_confirmation(
    inputId = "DelTabConfirmation",
    title = paste("Want to",as.character(input$myTabs)," delete ?")
  )
})

observeEvent(input$DelTabConfirmation, {
  
    removeTab("myTabs", target=input$myTabs)
})

observeEvent(input$server3, {
  
  ask_confirmation("myTabsdsd", title = "dupa", text = "dupa")
})