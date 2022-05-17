#' Run ShinyWizzard App
#'
#' @param loc locectory to tabs, when NULL run demo
#' 
#' @export

RunShinyWizzard <- function(loc = NULL){
  
  message(getwd())
  
  # loc
  if (is.null(loc)){ loc <- NULL }else{
    if (loc.exists(loc)){ stop("App locectory ", loc, " does not exist!")}
  }
  
  Apploc <<- loc
  
  shiny::runApp(paste0(system.file(package = "ShinyWizzard"),"/inst/"))
  
}