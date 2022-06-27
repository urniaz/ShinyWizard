tabIndex <- reactiveVal(0)
observeEvent(input$newTab, {
  tabIndex(tabIndex() + 1)
  appendTab("myTabs", tabPanel(tabIndex(), tags$p(paste("I'm tab", tabIndex()))), select=TRUE)
})
observeEvent(input$removeTab, {
  if (confirmSweetAlert(text = input$myTabs)){
    removeTab("myTabs", target=input$myTabs)
  }
})