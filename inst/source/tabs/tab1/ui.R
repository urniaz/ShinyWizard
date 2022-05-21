# TabName: Intro
# TabIcon: bar-chart-o

HTML('<h1>Welcome!</h1>
      <p>If youre seeing this page, that means lncRna is installed and running. <strong>Congratulations!</strong> </p>
    ')

fluidPage(
  fluidRow(
   tags$div(style= "height:100px; background:red;", textOutput("value")),
   tags$input(id = ns("AppTitleInput"), onchange = paste0("document.getElementById('AppTitle').textContent = document.getElementById('",ns('AppTitleInput'),"').value;"))
   
  )
)

