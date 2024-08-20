#' Save config.yaml

load_config.yaml <- function(input, output, session){
  
  # Save config
  #  - Load configuration file from Temp Proj Dir
  temp_config <- yaml::yaml.load_file(paste0(config$TempProjPath,'config.yaml'))
  
  #  - Update original variables
  
  shinyjs::alert(paste0(temp_config))

  shinyjs::runjs(paste0("document.getElementById('tab2-AppTitleInput').value = '",temp_config$AppTitle,"'"))
  shinyjs::runjs(paste0("document.getElementById('tab2-AppSubTitleInput').value = '",temp_config$AppSubTitle,"'"))
  shinyjs::runjs(paste0("document.getElementById('tab2-LogoFilePathInput').value = '",temp_config$LogoFilePath,"'"))
  shinyjs::runjs(paste0("document.getElementById('tab2-FooterTextInput').value = '",temp_config$FooterText,"'"))
  shinyjs::runjs(paste0("document.getElementById('tab2-shinytheme-selector').value = '",temp_config$ShinyWizzardTheme,"'"))
  
}


