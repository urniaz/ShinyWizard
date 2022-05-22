#' Generate Title Panel

GenTitlePanel <- function(){
  titlePanel(windowTitle = if (config$AppTitle != ""){ config$AppTitle }else{ "ShinyWizard App" },
             fluidRow(
               column(11, 
                      tags$div(id = "AppTitle", style= if (config$AppTitleVisible){}else{print("display:none;")}, config$AppTitle), 
                      tags$h5(id = "AppSubTitle", style= if (config$AppSubTitleVisible){}else{print("display:none;")}, config$AppSubTitle)), 
               column(1, 
                      img(id ="LogoFilePath", style =  if (config$LogoVisible){config$LogoStyle}else{print("display:none;")} , src = config$LogoFilePath)) 
             ))
}