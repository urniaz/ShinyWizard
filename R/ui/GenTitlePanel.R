#' Generate Title Panel

GenTitlePanel <- function(){
  titlePanel(windowTitle = config$WindowTitle,
             fluidRow(
               column(11, config$AppTitle, tags$h5(config$AppSubTitle)), 
               column(1, img(height = config$LogoHeight, width = config$LogoWidht, src =  config$LogoFilePath))
             ))
}