observeEvent(input$add, {
  appendTab(inputId = "tabs",
            tabPanel("Dynamic", 
                     "This a dynamically-added tab")
  )
})


observeEvent(input$remove, {
  removeTab(inputId = "tabs", target = "Foo")
})