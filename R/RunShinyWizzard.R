#' Run ShinyWizzard App
#'
#' @param loc locectory to tabs, when NULL run demo
#' 
#' @export

RunShinyWizzard <- function(loc = NULL){
  
  # loc
  if (is.null(loc)){ loc <- NULL }else{
    if (loc.exists(loc)){ stop("App locectory ", loc, " does not exist!")}
  }
  
  print(wd())
  
  shinyOptions(Apploc = loc)
  shiny::runApp(system.file("inst/", package = "ShinyWizzard", mustWork = TRUE))
  
}