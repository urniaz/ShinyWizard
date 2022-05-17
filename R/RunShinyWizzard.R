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
     unlink(paste0(TempPath, "/source/core/tabs/"), recursive = TRUE)
     dir.create(paste0(TempPath,"/source/core/tabs/"), showWarnings = FALSE)
     # Copy 
     file.copy(loc, paste0(TempPath, "/source/core/tabs/"), recursive=TRUE)
     file.copy(paste0(TempPath, "/source/core/tabs/", loc), paste0(TempPath, "/source/core/tabs/"), recursive=TRUE)
   }else{stop("The directory", loc ," does not exists!")}
  }
  
  # Run app
  shiny::runApp(paste0(TempPath, "/source"))
  
}