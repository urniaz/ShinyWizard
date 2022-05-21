output$demo_text <- renderText({
  sprintf("Plot of %s", input$AppTitleInput)
})
