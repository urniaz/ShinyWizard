
      # ---> Your code goes here ...
      observeEvent(input$info_3, {
        
          sendSweetAlert(
            session = session,
            title = "Information",
            text = HTML("<b>Something</b> helpful"),
            type = "info"
          )
 
      })
      # <--- 
