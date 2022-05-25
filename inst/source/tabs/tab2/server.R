# You can access the value of the widget with input$text, e.g.

output$directorypath <- renderPrint({
  if (is.integer(input$directory)) {
    cat("No directory has been selected (shinyDirChoose)")
  } else {
    parseDirPath(volumes, input$directory)
  }
})


print(input)