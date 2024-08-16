

# Download Shiny Wizard ZIP file
output$DownloadShinyWizardZIP <- downloadHandler(
  filename = function() {
    paste("ShinyWizard-", Sys.Date(), ".zip", sep="")
  },
  content = function() {
    utils::zip(tempfile(), list.files(config$TempProjPath))
  }
)


output$result <- renderText({(paste("config", tempdir(), " /+/ ", config$TempProjPath))})

