#' Generate html footer on the bottom of the page

GenFooter <- function(){
  
 if (config$FooterVisible){
  div(style = config$FooterStyle,
      
      HTML(paste0("Created with ShinyWizzard.", config$FooterHTML))
  )
  }
}