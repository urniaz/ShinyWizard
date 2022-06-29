#' Save config.yaml

save_config.yaml <- function(input, output, session){
  
  # Save config
  #  - Load configuration file original
  temp_config <- yaml::yaml.load_file(system.file("source/config.yaml", package = "ShinyWizard"))
  
  #  - Edit original variables
  temp_config$AppTitle <- input$AppTitleInput
  temp_config$AppSubTitle <- input$AppSubTitleInput
  temp_config$LogoFilePath <- input$LogoFilePathInput
  temp_config$FooterText <- input$FooterTextInput
  temp_config$ShinyWizzardTheme <- input$`shinytheme-selector`
 
  
   print(temp_config)
}


