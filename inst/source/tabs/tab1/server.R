# You can access the value of the widget with input$text, e.g.
observeEvent(input$butat, {
  
  sendSweetAlert(
    session = session,
    title = "Success !!",
    text = "All in order",
    type = "success"
  )
  
})

shinyDirChoose(
  input,
  'dir',
  roots = c(home = '~'),
  filetypes = c('', 'txt', 'bigWig', "tsv", "csv", "bw")
)

global <- reactiveValues(datapath = getwd())

dir <- reactive(input$dir)

output$dir <- renderText({
  global$datapath
})

observeEvent(ignoreNULL = TRUE,
             eventExpr = {
               input$dir
             },
             handlerExpr = {
               if (!"path" %in% names(dir())) return()
               home <- normalizePath("~")
               global$datapath <-
                 file.path(home, paste(unlist(dir()$path[-1]), collapse = .Platform$file.sep))
             })

print(input)