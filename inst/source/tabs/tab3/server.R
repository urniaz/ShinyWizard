
      # ---> Your code goes here ...
      observeEvent(input$tab1button, {
        
          sendSweetAlert(
            session = session,
            title = "Information",
            text = HTML("<b>Something</b> helpful"),
            type = "info"
          )
 
      })
      # <--- 
