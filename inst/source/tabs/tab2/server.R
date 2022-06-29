# You can access the value of the widget with input$text, e.g.


observeEvent(input$AppTitleInput, { config$AppTitle <- input$AppTitleInput
print(config)
}) #<---- save ???

observeEvent(input$AppSubTitleInput, { config$AppSubTitle <- input$AppSubTitleInput
print(config)
}) #<---- save ???


print(input)