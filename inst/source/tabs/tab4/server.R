
      count <- reactiveVal(0)
      observeEvent(input$button, {
        count(count() + 1)
        config$AppTitle <- " change"
      })
      output$out <- renderText({
        count()
      })
      count
      
