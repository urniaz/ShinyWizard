# TabName: Intro
# TabIcon: bar-chart-o

HTML('<h1>Welcome!</h1>
      <p>If youre seeing this page, that means lncRna is installed and running. <strong>Congratulations!</strong> </p>
    ')

fluidPage(
  fluidRow(

# AppTitleInput  
   textInput(inputId = ns("AppTitleInput"),
             label = "Application Title",
             value = config$AppTitle),
   tags$script(paste0("/*jslint browser:true*/
               document.getElementById('",ns("AppTitleInput"),"').addEventListener('input', function() {
               document.getElementById('AppTitle').textContent = document.getElementById('",ns("AppTitleInput"),"').value;});")),
   
# AppSubTitle
   textInput(inputId = ns("AppSubTitleInput"),
             label = "Application Subtitle",
             value = config$AppSubTitle),
   tags$script(paste0("/*jslint browser:true*/
               document.getElementById('",ns("AppSubTitleInput"),"').addEventListener('input', function() {
               document.getElementById('AppSubTitle').textContent = document.getElementById('",ns("AppSubTitleInput"),"').value;});")),

  )
)

# zawsze ns() do id !!!!! lacznie z output każdy id z ns() !!!!!

# FooterText