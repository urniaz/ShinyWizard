#' Generate html footer on the bottom of the page

GenInfoIcon <- function(){
  
 if (config$FooterVisible){
  div(style = config$FooterStyle,
      
      HTML(config$FooterHTML)
  )
  }
}