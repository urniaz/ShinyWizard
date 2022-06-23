rv <- reactiveValues(counter = 0L)

observeEvent(input$add, {
  rv$counter <- rv$counter + 1L
  appendTab(inputId = "tabs",
            tabPanel("Dynamic", paste("This a dynamically-added tab", rv$counter))
  )
})
observeEvent(input$remove, {
  removeTab(inputId = "tabs", target = "Foo")
})
