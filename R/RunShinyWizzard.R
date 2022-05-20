#' Run ShinyWizard app
#'
#' @param loc directory to external tabs, when NULL run demo
#' 
#' @export

RunShinyWizard <- function(loc = ""){
  
  # Copy source code to temp
  TempPath <- tempdir()
  
  # Copy all original files
  file.copy(system.file("source", package = "ShinyWizard"), TempPath, recursive=TRUE)
  
  # ZIP file?
  # unpack and loc is the temp loaction where uppacked
  
  # Copy user project files, if any 
  if ((loc != "")){
   # add slash if not provided
   if (substring(loc, nchar(loc)) != "/"){ loc = paste0(loc, "/")}
   # Dir loc exists 
   if (dir.exists(loc)){
     if (dir.exists(paste0(loc, "/tabs/")) && file.exists(paste0(loc, "config.yaml"))){
     # Clear demo data & copy tabs
     unlink(paste0(TempPath, "/source/tabs/"), recursive = TRUE)
     dir.create(paste0(TempPath,"/source/tabs/"), showWarnings = FALSE)
     file.copy(paste0(loc, "/tabs/"), paste0(TempPath, "/source/"), recursive=TRUE)
     # Clear demo config & copy config.yaml
     unlink(paste0(TempPath, "/source/config.yaml"), recursive = TRUE)
     file.copy(paste0(loc, "config.yaml"), paste0(TempPath, "/source/"), recursive=TRUE)
     # Copy www and overwrite 
     unlink(paste0(TempPath, "/source/www/"), recursive = TRUE)
     file.copy(paste0(loc, "/www/"), paste0(TempPath, "/source/"), recursive=TRUE, overwrite = TRUE)
     }else{ stop("The directory should contain at least 'tabs' folder and config.yaml file!")}
   }else{stop("The directory ", loc ," does not exists!")}
  }
  
  # Run app
  
  shiny::runApp(paste0(TempPath, "/source/"))
  
}