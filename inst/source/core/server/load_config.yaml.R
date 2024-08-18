#' Save config.yaml

load_config.yaml <- function(input, output, session){
  
  # Save config
  #  - Load configuration file from Temp Proj Dir
  temp_config <- yaml::yaml.load_file(paste0(config$TempProjPath,'config.yaml'))
  
  #  - Update original variables
  updateTextInput(inputId = 'tab2-AppTitleInput', value = temp_config$AppTitle)
  updateTextInput(inputId = 'tab2-AppSubTitleInput', value = temp_config$AppSubTitle)
  updateTextInput(inputId = 'tab2-LogoFilePathInput', value = temp_config$AppSubTitle)
  updateTextInput(inputId = 'tab2-FooterTextInput', value = temp_config$FooterText)
  updateSelectInput(inputId = 'tab2-shinytheme-selector', selected = temp_config$ShinyWizzardTheme)

}


