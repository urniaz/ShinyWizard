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
      <p>If you\'re seeing this page, that means Shiny Wizard is installed and running. 
      <strong>Congratulations!</strong> 
      </p>Start new project 
      '),
     br(),
     br(),
        next_prev_button(1,2, NextName = "New Project"),
     br(),
     br(),
     p("or edit an existing (*.zip)"),
     br(),
        fileInput(ns("UploadProjectFile"), NULL, accept = ".zip", multiple = FALSE),
     HTML("</center>")
 )
)

fluidPage(
  sidebarLayout(
    sidebarPanel(
      fileInput("file1", "Choose CSV File", accept = ".csv"),
      checkboxInput("header", "Header", TRUE)
    ),
    mainPanel(
      tableOutput("contents")
    )
  )
)

# zawsze ns() do id !!!!! lacznie z output każdy id z ns() !!!!!
