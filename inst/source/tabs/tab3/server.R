tabIndex <- reactiveVal(0)
observeEvent(input$newTab, {
  tabIndex(tabIndex() + 1)
  appendTab("myTabs", tabPanel(tabIndex(), tags$p(paste("I'm tab", tabIndex()))), select=TRUE)
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