#' Generate html footer on the bottom of the page

GenFooter <- function(){
  
 if (config$FooterVisible){
  div(style = paste0(
      "height: ", config$FooterHeight,"px;",
      config$FooterStyle
      ),
      
      HTML(config$FooterHTML)
  )
  }
}