# You can access the value of the widget with input$text, e.g.

observeEvent(input$directory, {
  
  alert("sdsdds")
  output$directorypath <- renderText("ddd")
})




print(input)