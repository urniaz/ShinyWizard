#' Save config.yaml

load_config.yaml <- function(input, output, session){
  
  # Save config
  #  - Load configuration file from Temp Proj Dir
  temp_config <- yaml::yaml.load_file(paste0(config$TempProjPath,'config.yaml'))
  
  #  - Update original variables
 
  # Assign values to input
  shinyjs::runjs(paste0("document.getElementById('tab2-AppTitleInput').value = '",temp_config$AppTitle,"'"))
  shinyjs::runjs(paste0("document.getElementById('tab2-AppSubTitleInput').value = '",temp_config$AppSubTitle,"'"))
  shinyjs::runjs(paste0("document.getElementById('tab2-LogoFilePathInput').value = '",temp_config$LogoFilePath,"'"))
  shinyjs::runjs(paste0("document.getElementById('tab2-FooterTextInput').value = '",temp_config$FooterText,"'"))
  shinyjs::runjs(paste0("document.getElementById('tab2-shinytheme-selector').value = '",temp_config$ShinyWizzardTheme,"'"))
  
  # Assign values to text
  shinyjs::runjs(paste0("document.getElementById('AppTitle').textContent = '",temp_config$AppTitle,"'"))
  shinyjs::runjs(paste0("document.getElementById('AppSubTitle').textContent = '",temp_config$AppSubTitle,"'"))
  shinyjs::runjs(paste0("document.getElementById('LogoFilePath').textContent = '",temp_config$LogoFilePath,"'"))
  shinyjs::runjs(paste0("document.getElementById('FooterText').textContent = '",temp_config$FooterText,"'"))
  shinyjs::runjs(paste0("document.getElementById('FooterText').textContent = '",temp_config$FooterText,"'"))
  
  # Assign Theme
  shinyjs::runjs(paste0("document.getElementById('tab2-shinytheme-selector').dispatchEvent(new Event('change'));"))
  

}


