


# Upload Project File
output$contents <- renderText({
  
  file <- input$UploadProjectFile
  ext <- tools::file_ext(file$datapath)
  req(file)
  validate(need(ext == "zip", "Please upload a zip file"))
  
  paste("gfdcvbhg")

})