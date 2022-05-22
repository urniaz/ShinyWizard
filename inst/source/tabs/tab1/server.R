# You can access the value of the widget with input$text, e.g.
output$v <- renderText({ input[ns("AppTitleInput")] })

print(output)
print(input)
