moduleServer(
    id = "tab1", # <--- Assign the dedicated ID for the tab/module, the same as in ui file 
    
    function(input, output, session) {
      
      # ---> Your code goes here ...
      observeEvent(input$tab1button, {
        
        shinyjs::alert("Well done!")
        
      })
      # <--- 
    }
)
