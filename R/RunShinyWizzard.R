#' Run ShinyWizzard App
#'
#' @param loc locectory to tabs, when NULL run demo
#' 
#' @export

RunShinyWizzard <- function(loc = NULL){
  
  # Copy source code to temp
  TempPath <- tempdir()
  file.copy(system.file("source", package = "ShinyWizzard"), TempPath, recursive=TRUE)
  
  
  shiny::runApp(TempPath)
  
}