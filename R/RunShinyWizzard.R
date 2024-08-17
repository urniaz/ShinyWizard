#' Run ShinyWizard app
#'
#' @param loc directory to external tabs, when NULL run demo
#' 
#' @export

RunShinyWizard <- function(loc = NULL, devMode = FALSE){
  
  if (is.null(loc)){ # Run creator
    
    # Copy source code to temp
    TempPath <- tempdir()
    
    # Copy all original files
    file.copy(system.file("source", package = "ShinyWizard"), TempPath, recursive=TRUE)
    
    # Run project
    write(paste0("shiny::runApp('",paste0(TempPath, "/source/"),"', launch.browser = TRUE)"), paste0(TempPath, "/run.R"))
    
    # Dev Mode uses rstudioapi
    if (devMode){
      rstudioapi::jobRunScript(paste0(TempPath, "/run.R"))
    }else{
      system2("Rscript", paste0(TempPath, "/run.R"))
    }
    
    
  }else{
    
    if (file.exists(loc) && !dir.exists(loc)){ #TRUE => file, unzip & rerun 
      
        # is loc = <.zip file with project> zip file contains only tabs
        # config$TempProjPath
        utils::unzip(loc, exdir = tempdir(), overwrite = TRUE)
        RunShinyWizard(loc = tempdir())
      
    } else { #FALSE => directory, run app
      
        # is loc = <tempDir> Run temp app
        # Copy all original files
        file.copy(system.file("source/core", package = "ShinyWizard"), loc, recursive=TRUE)
        file.copy(system.file("source/global.R", package = "ShinyWizard"), loc, recursive=TRUE)
        file.copy(system.file("source/server.R", package = "ShinyWizard"), loc, recursive=TRUE)
        file.copy(system.file("source/ui.R", package = "ShinyWizard"), loc, recursive=TRUE)
        file.copy(system.file("source/www", package = "ShinyWizard"), loc, recursive=TRUE)
    
      # Run project
      write(paste0("shiny::runApp('", loc,"', launch.browser = TRUE)"), paste0(loc, "run.R"))
      
      # Dev Mode uses rstudioapi
      if (devMode){
        rstudioapi::jobRunScript(paste0(loc, "run.R"))
      }else{
        system2("Rscript", paste0(loc, "run.R"))
      }
      
    }
  }
  
}