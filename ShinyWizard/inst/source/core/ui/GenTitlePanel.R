#' Generate Title Panel

GenTitlePanel <- function(){
  titlePanel(windowTitle = config$AppTitle,
             fluidRow(
               column(11, 
                      tags$div(id = "AppTitle", config$AppTitle), 
                      tags$h5(id = "AppSubTitle", if (config$AppSubTitle == 'NULL'){paste("Version", packageVersion('ShinyWizard'))}else{config$AppSubTitl}) ), 
               column(1, 
                      img(id ="LogoFilePath", style="height: 60px; wigth:60px; float:right; vertical-align:middle", src = config$LogoFilePath)) 
             ))
}