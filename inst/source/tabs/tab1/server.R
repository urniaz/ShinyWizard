# You can access the value of the widget with input$text, e.g.
observeEvent(input$butat, {
  
  sendSweetAlert(
    session = session,
    title = "Success !!",
    text = "All in order",
    type = "success"
  )
  
})



print(input)