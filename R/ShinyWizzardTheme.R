#' Return dir / show available ShinyWizard templates
#'
#' @param name the theme name to be applied. None argument provided returns all available themes.
#' 
#' @export

ShinyWizzardTheme <- function(name = ""){
  
  templatesPath <- system.file("templates", package = "ShinyWizard")
  templatesList <- list.files(templatesPath)
   if ( name == ""){
     return(templatesList)
   }else{
     if(file.exists(paste0(templatesPath, "/", name, "/bootstrap.min.css"))){
       return(paste0(templatesPath, "/", name, "/bootstrap.min.css"))
     }else{ 
       stop("The template name '", name, "' is not avaliable. Please use one of ", paste(ShinyWizzardTheme(), collapse=", "))}
   }
}