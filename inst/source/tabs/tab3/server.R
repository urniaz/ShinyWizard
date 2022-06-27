tabIndex <- reactiveVal(0)

observeEvent(input$newTab, {
  
  tabIndex(tabIndex() + 1)
  
  appendTab("myTabs", tabPanel(tabIndex(), 
                               textAreaInput(inputId = paste0("server",tabIndex()),
                                             label = paste("Tab ",tabIndex(), "server.R"),
                                             value = paste("I'm tab", tabIndex()),
                                             width = "100%",
                                             height = "100%")
                               ), 
            select=TRUE)
})

observeEvent(input$removeTab, {
   
  res <- ask_confirmation(
    inputId = "myconfirmation",
    title = paste("Want to",as.character(input$myTabs)," delete ?")
  )
})

observeEvent(input$myconfirmation, {
  
    removeTab("myTabs", target=input$myTabs)
})

observeEvent(input$server3, {
  
  removeTab("myTabs", target=input$myTabs)
})