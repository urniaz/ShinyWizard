

# Download Shiny Wizard ZIP file
output$DownloadShinyWizardZIP <- downloadHandler(
  filename = function() {
    paste("ShinyWizard-", Sys.Date(), ".zip", sep="")
  },
  content = function(file) {
    # change wd
    temp <- getwd()
    setwd(config$TempProjPath)
    # save all files  
    utils::zip(file, list.files(config$TempProjPath))
    setwd(temp)
  }
)


output$result <- renderText({(paste(config$TempProjPathTabs, "/ + /", getwd()))})

