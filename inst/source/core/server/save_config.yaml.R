#' Save config.yaml

save_config.yaml <- function(input, output, session){
  
  # Save config
  #  - Load configuration file orginal
  temp_config <- yaml::yaml.load_file(system.file("source/config.yaml", package = "ShinyWizard"))
  #  - Edit original variables
  temp_config$AppTitle <- input$AppTitleInput
  
  print(input$AppTitleInput)
  print(input$tab2-AppTitleInput)
  print(temp_config)
 
}


