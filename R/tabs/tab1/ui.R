# ns all ids! 

counterButton <- function(id) {
  ns <- NS(id)
  tagList(
    actionButton(ns("buttonA"), label = "alert")
  )
}

fluidPage(
  HTML('<h1>Welcome!</h1>
      <p>If youre seeing this page, that means lncRna is installed and running. <strong>Congratulations!</strong> </p>
    '),
  counterButton("tab1")
)