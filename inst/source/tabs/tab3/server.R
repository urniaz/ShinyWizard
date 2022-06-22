observeEvent(input$add, {
  appendTab(inputId = "tabs",
            tabPanel("Dynamic", 
                     "This a dynamically-added tab",
                     value = "tab_1")
  )
})


observeEvent(input$remove, {
  removeTab(inputId = "tabs", target = "Foo")
})