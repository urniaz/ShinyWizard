#' Run ShinyWizzard app
#'
#' @param loc directory to external tabs, when NULL run demo
#' 
#' @export

RunShinyWizzard <- function(loc = ""){
  
  # Copy source code to temp
  TempPath <- tempdir()
  file.copy(system.file("source", package = "ShinyWizzard"), TempPath, recursive=TRUE)
  
  # Copy project file if any 
  if ((loc != "")){
   if (dir.exists(loc)){
     # Clear demo data
     file.remove(paste0(TempPath, "/core/tabs/"))
     # Copy 
     file.copy(loc, paste0(TempPath, "/core/tabs/"), recursive=TRUE)
   }else{stop("The directory", loc ," does not exists!")}
  }
  
  # Run app
  shiny::runApp(paste0(TempPath, "/source"))
  
}