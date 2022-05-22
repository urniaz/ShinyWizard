# You can access the value of the widget with input$text, e.g.
output$v <- renderText({ input[ns("AppTitleInput2")] })

print(output)
print(input)
