# You can access the value of the widget with input$text, e.g.


observeEvent(input$AppTitleInput, { config$AppTitleInput <- input$AppTitleInput}) #<---- save 

print(config)
