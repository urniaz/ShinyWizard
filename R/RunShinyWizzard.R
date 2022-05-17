#' Run ShinyWizzard App
#'
#' @param loc locectory to tabs, when NULL run demo
#' 
#' @export

RunShinyWizzard <- function(loc = NULL){
  
  # Copy source code to temp
  TempPath <- tempdir()
  file.copy(system.file("source", package = "ShinyWizzard"), TempPath, recursive=TRUE)
  
  # Copy project file if any 
  if (dir.exists(loc)){
    
    # Clear demo data
    file.remove(paste0(TempPath, "/core/tabs/"))
    # Copy 
    file.copy(loc, paste0(TempPath, "/core/tabs/"), recursive=TRUE)
    
  }else{stop("The directory", loc ," does not exists!")}
  
  shiny::runApp(paste0(TempPath, "/source"))
  
}