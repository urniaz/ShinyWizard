# TabName: Intro
# TabIcon: bar-chart-o

HTML('<h1>Welcome!</h1>
      <p>If youre seeing this page, that means lncRna is installed and running. <strong>Congratulations!</strong> </p>
    ')

fluidPage(
  fluidRow(
   tags$div(style= "height:100px; background:red;", textOutput(ns("v"))),
   tags$input(id = ns("AppTitleInput"), class= "shiny-bound-input", onchange = paste0("document.getElementById('AppTitle').textContent = document.getElementById('",ns('AppTitleInput'),"').value;")),
   shiny::textInput(inputId = ns("AppTitleInput2"), label = "sdwewe")
  )
)

# zawsze ns() do id !!!!! lacznie z output każdy id z ns() !!!!!