# You can access the value of the widget with input$text, e.g.
output$value <- renderPrint({ input[ns('AppTitleInput')] })

observe(input$AppTitleInput, {
  
  shinyjs::alert("Well done!")
  
})