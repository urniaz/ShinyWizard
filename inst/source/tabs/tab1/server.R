
observeEvent(input$AppTitleInput){
  output$demo_text <- renderText({input$AppTitleInput})
}
