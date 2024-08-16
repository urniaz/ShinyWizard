# --- Navigation ---
# TabName: Welcome
# TabIcon: home

# --- Next/Prev buttons
# ShowButtons: FALSE

# --- Info ---
# InfoTitle: tir
# InfoMessage: mes

fluidPage(
  fluidRow(
     HTML('<center><h1>Welcome!</h1>
      <p>If you\'re seeing this page, that means Shiny Wizard is installed and running. <strong>Congratulations!</strong> </p>Now please choose one of the option.
      <br />
      <br />
      '),
     next_prev_button(1,2, NextName = "New Project")
     ,
     sidebarLayout(
       sidebarPanel(
         fileInput(ns("file1"), "Choose CSV File", accept = ".csv"),
         checkboxInput(ns("header"), "Header", TRUE)
       ),
       mainPanel(
         tableOutput(ns("contents"))
       )
     ),
     HTML("</center>")
 )
)

# zawsze ns() do id !!!!! lacznie z output każdy id z ns() !!!!!