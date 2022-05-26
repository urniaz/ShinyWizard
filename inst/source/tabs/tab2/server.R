# You can access the value of the widget with input$text, e.g.

# volumes <- c(Home = fs::path_home(), "R Installation" = R.home(), getVolumes()())
# shinyDirChoose(input, "directory", roots = volumes, session = session, allowDirCreate = TRUE)

shinyDirChoose(input,"button2",roots=getVolumes())

output$directorypath <- renderPrint({
  if (is.integer(input$directory)) {
    cat("No directory has been selected (shinyDirChoose)")
  } else {
    parseDirPath(volumes, input$directory)
  }
})


print(input)