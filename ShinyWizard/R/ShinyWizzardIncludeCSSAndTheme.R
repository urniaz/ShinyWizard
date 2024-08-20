#' ShinyWizzardIncludeCSSAndTheme
#'
# @export

ShinyWizzardIncludeCSSAndTheme <- function(){
  
   if(config$ShinyWizzardTheme != ""){
      includeCSS(ShinyWizzardTheme(config$ShinyWizzardTheme))
   }else{cat("config$ShinyWizzardTheme is empty!")}
   
  
}