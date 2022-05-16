# TabName: Intro
# TabIcon: table

counterButton <- function(label = "Counter") {
  tagList(
    actionButton(ns("button"), label = label),
    verbatimTextOutput(ns("out"))
  )
}

fluidPage(
  counterButton( "Counter +1")
)