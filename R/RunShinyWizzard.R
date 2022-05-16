#' Run ShinyWizzard App
#'
#' @param dir directory to tabs, when NULL run demo

RunShinyWizzard <- function(dir = NULL){
  
  # Dir
  if (is.null(dir)){ dir <- "inst/" }else{
    if (dir.exists(dir)){ stop("App directory ", dir, "does not exist!")}
  }
  
  runApp(dir)
  
}