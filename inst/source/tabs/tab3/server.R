tabIndex <- reactiveVal(0)
observeEvent(input$newTab, {
  tabIndex(tabIndex() + 1)
  appendTab("myTabs", tabPanel(tabIndex(), tags$p(paste("I'm tab", tabIndex()))), select=TRUE)
})
observeEvent(input$removeTab, {
   
  res<- confirmSweetAlert(inputId="conf", text = input$myTabs)
  
   if (res){
    removeTab("myTabs", target=input$myTabs)
  }
})