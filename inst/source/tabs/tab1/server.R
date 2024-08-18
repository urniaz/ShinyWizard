


# Upload Project File
output$contents <- renderText({
  
  # Upload
  file <- input$UploadProjectFile
  ext <- tools::file_ext(file$datapath)
  req(file)
  validate(need(ext == "zip", "Please upload a zip file"))
  
  # Unzip 
  path <- dirname(file$datapath)
  utils::unzip(file$datapath, exdir = path)
  
  # Copy to Temp Proj Dri
  file.copy(paste0(path,'/config.yaml'), config$TempProjPath, recursive=TRUE)
  file.copy(paste0(path,'/tabs'), config$TempProjPath, recursive=TRUE)
  
  # Load config
  load_config.yaml(input, output, session)
  
  # Load tabs
  as.character(paste0(path,"/+/" ,config$TempProjPath))
  
})