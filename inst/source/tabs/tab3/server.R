
      # ---> Your code goes here ...
      observeEvent(input$tab1button, {
        
          sendSweetAlert(
            session = session,
            title = "Information",
            text = "<b>Something</b> helpful",
            type = "info"
          )
 
      })
      # <--- 
