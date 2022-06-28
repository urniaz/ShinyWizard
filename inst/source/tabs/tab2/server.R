# You can access the value of the widget with input$text, e.g.




observeEvent(input$AppTitleInput, {print(input$AppTitleInput)})
observeEvent(input$AppTitleInput, {save_config.yaml(input, output, session)})