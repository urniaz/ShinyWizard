# You can access the value of the widget with input$text, e.g.

# volumes <- c(Home = fs::path_home(), "R Installation" = R.home(), getVolumes()())
# shinyDirChoose(input, "directory", roots = volumes, session = session, allowDirCreate = TRUE)

# volumes = getVolumes()
# shinyDirChoose(input, "folderChoose", roots = volumes, session = session)

shinyDirChoose(input, 'data_folder', session=session, roots=c(home='~'), filetypes=c('', '.txt'))

output$directorypath <- renderPrint({
  if (is.integer(input$folderChoose)) {
    cat("No directory has been selected (shinyDirChoose)")
  } else {
    parseDirPath(volumes, input$directory)
  }
})


print(input)