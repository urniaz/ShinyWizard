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
     
              <button id="NavBar-go_2_3" type="button" class="btn btn-default action-button shiny-bound-input">Next</button>
              <button id="NavBar-go_2_3" type="button" class="btn btn-default action-button shiny-bound-input">New Project</button>
        </div>
      '),
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