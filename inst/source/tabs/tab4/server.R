# Our dataset
data <- mtcars

output$downloadData <- downloadHandler(
  filename = function() {
    paste("data-", Sys.Date(), ".csv", sep="")
  },
  content = function(file) {
    write.csv(data, file)
  }
)

output$result <- renderText({paste("config", tempdir())})

