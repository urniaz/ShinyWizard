# You can access the value of the widget with input$text, e.g.


path = readDirectoryInput(session, 'directory')
updateDirectoryInput(session, 'directory', value = path)

# observeEvent(
#   ignoreNULL = TRUE,
#   eventExpr = {
#     input$directory
#   },
#   handlerExpr = {
#     if (input$directory > 0) {
#       # condition prevents handler execution on initial app launch
#       
#       # launch the directory selection dialog with initial path read from the widget
#       path = choose.dir(default = readDirectoryInput(session, 'directory'))
#       
#       # update the widget value
#       updateDirectoryInput(session, 'directory', value = path)
#     }
#   }
# )

print(input)