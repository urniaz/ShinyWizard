
# -- Download --- >

output$DownloadShinyWizardZIP <- downloadHandler(
  filename = function() {
    paste("ShinyWizard-", format(Sys.time(), "%d-%m-%y-%X"), ".zip", sep="")
  },
  content = function(file) {
    # change wd
    temp <- getwd()
    setwd(config$TempProjPath)
    # save all files  
    utils::zip(file, c('config.yaml', 'tabs'))
    setwd(temp)
  }
)


output$result <- renderText({(paste(config$TempProjPathTabs, "/ + /", getwd()))})



