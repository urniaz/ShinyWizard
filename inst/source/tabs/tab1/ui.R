# TabName: Intro
# TabIcon: bar-chart-o

HTML('<h1>Welcome!</h1>
      <p>If youre seeing this page, that means lncRna is installed and running. <strong>Congratulations!</strong> </p>
    ')

fluidPage(
  fluidRow(
   tags$div(style= "height:100px; background:red;", textOutput(ns("v"))),
   tags$div(class="form-group shiny-input-container",
   tags$input(id = ns("AppTitleInput"), type = "text", class= "form-control input-text", onkeydown = paste0("document.getElementById('AppTitle').textContent = document.getElementById('",ns('AppTitleInput'),"').value;"))),
  )
)

# zawsze ns() do id !!!!! lacznie z output każdy id z ns() !!!!!