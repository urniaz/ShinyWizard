#' Run ShinyWizard app
#'
#' @param name the theme name to be applied. None argument provided returns all available themes.
#' 
#' @export

ShinyWizzardIncludeCSSAndTheme <- function(){
  
   if(config$ShinyWizzardTheme != ""){
      includeCSS(ShinyWizzardTheme(config$ShinyWizzardTheme))
   }
   
  
}