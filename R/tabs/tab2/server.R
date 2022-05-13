moduleServer(
    id = "tab1",
    
    function(input, output, session) {
      
      observeEvent(input$buttonA, {
        
        shinyjs::alert("done!!!!")
        
      })
      
    }
)
