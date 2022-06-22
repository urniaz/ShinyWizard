observeEvent(input$add, {
  appendTab(inputId = "tabs",
            tabPanel("tab_3", 
                     "This a dynamically-added tab",
                     value = "tab_1")
  )
})


observeEvent(input$remove, {
  removeTab(inputId = "tabs", target = "tab_3")
})