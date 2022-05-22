# TabName: Intro
# TabIcon: bar-chart-o

HTML('<h1>Welcome!</h1>
      <p>If youre seeing this page, that means lncRna is installed and running. <strong>Congratulations!</strong> </p>
    ')

fluidPage(
  fluidRow(
   # AppTitleInput  
   tags$label("Application Title", class="control-label", `for`=ns("AppTitleInput")),
   tags$input(id = ns("AppTitleInput"), value = config$AppTitle, type = "text", class= "form-control input-text", onkeyup = paste0("document.getElementById('AppTitle').textContent = document.getElementById('",ns('AppTitleInput'),"').value;")),
   
   # AppSubTitle
   tags$label("Application Subtitle ", class="control-label", `for`=ns("AppSubTitle")),
   tags$input(id = ns("AppSubTitle"), value = config$AppSubTitle, type = "text", class= "form-control input-text", onkeyup = paste0("document.getElementById('AppSubTitle').textContent = document.getElementById('",ns('AppSubTitle'),"').value;"))
  )
)

# zawsze ns() do id !!!!! lacznie z output każdy id z ns() !!!!!