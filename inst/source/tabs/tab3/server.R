tabIndex <- reactiveVal(0)
observeEvent(input$newTab, {
  tabIndex(tabIndex() + 1)
  appendTab("myTabs", tabPanel(tabIndex(), tags$p(paste("I'm tab", tabIndex()))), select=TRUE)
})
observeEvent(input$removeTab, {
  removeTab("myTabs", target=input$myTabs)
})