#' Run ShinyWizard app
#'
#' @param loc directory to external tabs, when NULL run demo
#' 
#' @export

RunShinyWizard <- function(loc = NULL){
  
  if (is.null(loc)){
    
    # Copy source code to temp
    TempPath <- tempdir()
    
    # Copy all original files
    file.copy(system.file("source", package = "ShinyWizard"), TempPath, recursive=TRUE)
    
    # Run project
    write(paste0("shiny::runApp('",paste0(TempPath, "/source/"),"', launch.browser = TRUE)"), paste0(TempPath, "/run.R"))
    rstudioapi::jobRunScript(paste0(TempPath, "/run.R"))
    
  }else{
    
    # Copy all original files
    file.copy(system.file("source/core", package = "ShinyWizard"), loc, recursive=TRUE)
    file.copy(system.file("source/global.R", package = "ShinyWizard"), loc, recursive=TRUE)
    file.copy(system.file("source/server.R", package = "ShinyWizard"), loc, recursive=TRUE)
    file.copy(system.file("source/ui.R", package = "ShinyWizard"), loc, recursive=TRUE)
    file.copy(system.file("source/www", package = "ShinyWizard"), loc, recursive=TRUE)
    
    # Run project
    write(paste0("shiny::runApp('", loc,"', launch.browser = TRUE)"), paste0(loc, "run.R"))
    rstudioapi::jobRunScript(paste0(loc, "run.R"))
    
  }
  
}