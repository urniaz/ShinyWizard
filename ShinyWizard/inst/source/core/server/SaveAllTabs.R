#' Save all tabs

SaveAllTabs <- function(input, output, session, currentTabIndexes){
  
  # Temp dir tabs clear and save current
  unlink(config$TempProjPathTabs, recursive = TRUE, force = TRUE)
  dir.create(config$TempProjPathTabs, showWarnings = FALSE)
  
  for (i in currentTabIndexes){
    
    try({
      tabs_dir_n <- paste0(config$TempProjPathTabs,"tab", i,"/")
      dir.create(tabs_dir_n, showWarnings = FALSE)
      write_file(isolate(input[[paste0("ui",i)]]), paste0(tabs_dir_n, "/ui.R"))
      write_file(isolate(input[[paste0("server",i)]]),paste0(tabs_dir_n, "/server.R"))
      write_file(isolate(input[[paste0("config",i)]]),paste0(tabs_dir_n, "/config.yaml"))
    })
  }
}
