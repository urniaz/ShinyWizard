# You can access the value of the widget with input$text, e.g.
output[ns("value")] <- renderText({ input[ns("AppTitleInput")] })

