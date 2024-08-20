#' ShinyWizzardIncludeCSSAndTheme
#' 
#' @param ShinyWizzardTheme ShinyWizzard theme name returned by config$ShinyWizzardTheme
#'
# @export

ShinyWizzardIncludeCSSAndTheme <- function(ShinyWizzardTheme){
  
   if(ShinyWizzardTheme != ""){
     shiny::includeCSS(ShinyWizzardTheme(ShinyWizzardTheme))
   }else{cat("config$ShinyWizzardTheme is empty!")}
   
  
}