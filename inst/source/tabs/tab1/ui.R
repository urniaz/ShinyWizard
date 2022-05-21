# TabName: Intro
# TabIcon: bar-chart-o

HTML('<h1>Welcome!</h1>
      <p>If youre seeing this page, that means lncRna is installed and running. <strong>Congratulations!</strong> </p>
    ')

fluidPage(
  fluidRow(
    textInput("AppTitleInput", 
              label = "Name", 
              value = "", 
              width = "100%",
              placeholder = "Your Name")
    
    
  )
)

