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
 # temp_config$ShinyWizzardTheme <- 'flatly'  #input$`shinytheme-selector`
  
  TempProjPath <- paste0(tempdir(),"/SWTempProj/")
  dir.create(TempProjPath, showWarnings = FALSE)

  yaml::write_yaml(temp_config, paste0(TempProjPath,"config.yaml"))
   
}


