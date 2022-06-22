observeEvent(input$add, {
  insertTab(inputId = "tabs",
            tabPanel("Dynamic", actionButton(ns("remove"), "Remove Dynamic tab")),
            target = "Tab"
  )
})

observeEvent(input$remove, {
  removeTab(inputId = "tabs", target = "Dynamic")
})