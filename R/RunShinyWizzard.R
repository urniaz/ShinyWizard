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
    write_file(paste0("shiny::runApp('",paste0(TempPath, "/source/"),"', launch.browser = TRUE)"), paste0(TempPath, "/run.R"))
    rstudioapi::jobRunScript(paste0(TempPath, "/run.R"))
    
  }else{
    
    # Copy all original files
    file.copy(system.file("source", package = "ShinyWizard"), loc, recursive=TRUE)
    
    # Dir loc exists 
    if (dir.exists(loc)){
    #    # check tabs and config exist
    #    if (dir.exists(paste0(loc, "/tabs/")) && file.exists(paste0(loc, "/config.yaml"))){
    #    # Clear demo data & copy tabs
    #    unlink(paste0(TempPath, "/source/tabs/"), recursive = TRUE)
    #    dir.create(paste0(TempPath,"/source/tabs/"), showWarnings = FALSE)
    #    file.copy(paste0(loc, "/tabs/"), paste0(TempPath, "/source/"), recursive=TRUE)
    #    # Clear demo config & copy config.yaml
    #    unlink(paste0(TempPath, "/source/config.yaml"), recursive = TRUE)
    #    file.copy(paste0(loc, "/config.yaml"), paste0(TempPath, "/source/"), recursive=TRUE)
    #    }else{ cat("The directory should contain at least 'tabs' folder and config.yaml file!")}
    #    #if (dir.exists(paste0(loc, "/www/"))){
    #    
    #    # Copy www and overwrite 
    # #   unlink(paste0(TempPath, "/source/www/"), recursive = TRUE)
    # #   file.copy(paste0(loc, "/www/"), paste0(TempPath, "/source/"), recursive=TRUE, overwrite = TRUE)
    #    
    #  # }else{cat("The directory www ", loc ," does not exists!")}
    #  }
    }
    
    
    # Run project
    write_file(paste0("shiny::runApp('",paste0(loc, "/source/"),"', launch.browser = TRUE)"), paste0(TempPath, "/run.R"))
    
    rstudioapi::jobRunScript(paste0(loc, "/run.R"))
    
    
    
  }
  
}