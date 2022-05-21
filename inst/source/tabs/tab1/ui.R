# TabName: Intro
# TabIcon: bar-chart-o

HTML('<h1>Welcome!</h1>
      <p>If youre seeing this page, that means lncRna is installed and running. <strong>Congratulations!</strong> </p>
    ')

fluidPage(
  fluidRow(
   tags$input(id = "AppTitleInput", onchange = "document.getElementById('AppTitle').textContent = 'sdsadadsad';") 
  )
)

