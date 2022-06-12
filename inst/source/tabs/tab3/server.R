


observeEvent(input$add, {
  insertTab(inputId = "tabs",
            tabPanel("Dynamic", "This a dynamically-added tab"),
            target = "Bar"
  )
})

observeEvent(input$remove, {
  removeTab(inputId = "tabs", target = "Foo")
})