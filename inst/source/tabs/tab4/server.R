

# Download Shiny Wizard ZIP file
output$DownloadShinyWizardZIP <- downloadHandler(
  filename = function() {
    paste("ShinyWizard-", Sys.Date(), ".zip", sep="")
  },
  content = function(file) {
    # save all files  
    utils::zip(file, list.files(config$TempProjPath))
  }
)


output$result <- renderText({(config$TempProjPathTabs)})

