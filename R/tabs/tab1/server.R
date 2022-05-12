tab1Server <- function(id) {
  moduleServer(
    id,
    function(input, output, session) {
      
      observeEvent(input$buttonA, {
        
        shinyjs::alert("done!!!!")
        
      })
      
    }
  )
}


tab1Server("tab1")