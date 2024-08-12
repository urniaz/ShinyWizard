# --- Navigation ---
# TabName: Configuration
# TabIcon: cog

# --- Next/Prev buttons
# ShowButtons: TRUE
# ButtonsAlignment: center

HTML('<h1>Welcome!</h1>
      <p>If youre seeing this page, that means lncRna is installed and running. <strong>Congratulations!</strong> </p>
    ')

fluidPage(
  fluidRow(align="center",

# AppTitleInput  
   textInput(inputId = ns("AppTitleInput"),
             label = "Title",
             value = config$AppTitle),
   tags$script(paste0("/*jslint browser:true*/
               document.getElementById('",ns("AppTitleInput"),"').addEventListener('input', function() {
               document.getElementById('AppTitle').textContent = document.getElementById('",ns("AppTitleInput"),"').value;});")),
   
# AppSubTitle
   textInput(inputId = ns("AppSubTitleInput"),
             label = "Subtitle",
             value = config$AppSubTitle),
   tags$script(paste0("/*jslint browser:true*/
               document.getElementById('",ns("AppSubTitleInput"),"').addEventListener('input', function() {
               document.getElementById('AppSubTitle').textContent = document.getElementById('",ns("AppSubTitleInput"),"').value;});")),

# LogoFilePath
   textInput(inputId = ns("LogoFilePathInput"),
          label = "Logo",
          value = config$LogoFilePath),
   tags$script(paste0("/*jslint browser:true*/
               document.getElementById('",ns("LogoFilePathInput"),"').addEventListener('input', function() {
               document.getElementById('LogoFilePath').src = document.getElementById('",ns("LogoFilePathInput"),"').value;});")),

# FooterText
   textInput(inputId = ns("FooterTextInput"),
          label = "Footer",
          value = config$FooterText),
   tags$script(paste0("/*jslint browser:true*/
               document.getElementById('",ns("FooterTextInput"),"').addEventListener('input', function() {
               document.getElementById('FooterText').textContent = document.getElementById('",ns("FooterTextInput"),"').value;});")),


# Theme selector
   ShinyWizard::ShinyWizzardThemeSelector()

  )
)


