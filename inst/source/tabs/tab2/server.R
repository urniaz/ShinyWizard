# You can access the value of the widget with input$text, e.g.


output$directorypath <- renderPrint({
  if (is.integer(input$avatar)) {
    cat("No directory has been selected (shinyDirChoose)")
  } else {
    parseDirPath(volumes, input$avatar)
  }
})


print(input)