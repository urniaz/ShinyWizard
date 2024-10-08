#' Generate Title Panel

GenTitlePanel <- function(){
  titlePanel(windowTitle = if (config$AppTitle != ""){ config$AppTitle }else{ "ShinyWizard" },
             fluidRow(
               column(11, 
                      tags$div(id = "AppTitle", config$AppTitle), 
                      tags$h5(id = "AppSubTitle", config$AppSubTitle)), 
               column(1, 
                      img(id ="LogoFilePath", style="height: 60px; wigth:60px; float:right; vertical-align:middle", src = config$LogoFilePath)) 
             ))
}