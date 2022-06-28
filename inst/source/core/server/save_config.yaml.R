#' Save config.yaml

save_config.yaml <- function(input, output, session){
  
  # Save config
  #  - Load configuration file original
  temp_config <- yaml::yaml.load_file(system.file("source/config.yaml", package = "ShinyWizard"))
  #  - Edit original variables
  temp_config$AppTitle <-  {print(input$AppTitleInput)}
  temp_config$AppSubTitle <-  {print(input$AppSubTitle)}

 print(temp_config)
}


