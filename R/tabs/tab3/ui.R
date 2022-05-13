# Sidebar with a slider input for number of bins
counterButton <- function(id, label = "Counter") {
  ns <- NS(id)
  tagList(
    actionButton(ns("button"), label = label),
    verbatimTextOutput(ns("out"))
  )
}

fluidPage(
  counterButton("tab3", "Counter +1")
)