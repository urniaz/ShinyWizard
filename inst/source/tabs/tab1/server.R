output$contents <- renderTable({
  file <- input$file1
  ext <- tools::file_ext(file$datapath)
  
  req(file)
  validate(need(ext == "csv", "Please upload a csv file"))
  
  read.csv(file$datapath, header = input$header)
})