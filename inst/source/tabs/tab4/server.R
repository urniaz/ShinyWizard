

# Download Shiny Wizard ZIP file
output$DownloadShinyWizardZIP <- downloadHandler(
  filename = function() {
    paste("ShinyWizard-", Sys.Date(), ".zip", sep="")
  },
  content = function(file) {
    # save all files
    
    utils::zip(file, list.files(paste0(config$TempProjPath,"config.yml"), config$TempProjPathTabs))
  }
)


output$result <- renderText({(paste("config", tempdir(), " /+/ ", config$TempProjPath, " /+/ ", currentTabIndexes))})

