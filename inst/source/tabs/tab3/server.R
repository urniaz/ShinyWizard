
shinyInput <- function(name, id) paste(name, id, sep = "_")
rv <- reactiveValues(counter = 0L)

observeEvent(input$add, {
  rv$counter <- rv$counter + 1L
  ## GO TO THE NEWLY CREATED TAB:
  updateTabsetPanel(session, "tabs", shinyInput("new_tab", rv$counter))
}, ignoreInit = TRUE)

observeEvent(input$add, {
  appendTab(inputId = "tabs",
            tabPanel(title = paste("Tab", rv$counter),
                     value = shinyInput("new_tab", rv$counter),
                     
                     ## CONTENT PANEL ----- :
                     tags$h4(paste("This is tab:", rv$counter)),
                     p("Remove this tab"),
                     actionButton(shinyInput("remove_btn", rv$counter), "Remove", icon = icon("minus-circle"))
            )
  )
})

## REACTIVITY TO ARRANGE TAB NAMES:
current.tab <- eventReactive(input$tabs, {
  # don't accidentally remove main tab:
  if (!identical(input$tabs, "main")) {
    input$tabs
    print(input$tabs)
  } else {
    NULL
  }
})


## OBSERVERS FOR THE REMOVE BTNS:
observe({
  if (rv$counter > 0L) {
    lapply(seq(rv$counter), function(x) {
      observeEvent(input[[paste("remove_btn", x, sep = "_")]], {
        removeTab(inputId = ns("tabs"), target = current.tab())
      })
    })
  }
})
