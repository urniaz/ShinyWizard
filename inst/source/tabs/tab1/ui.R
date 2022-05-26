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
      <p>If youre seeing this page, that means ShinyWizard is installed and running. <strong>Congratulations!</strong> </p></center>
    '),
     shinyDirButton('button2',label='Directories',title='Choose Path'),
     verbatimTextOutput("directorypath")
     
  )
)

# zawsze ns() do id !!!!! lacznie z output każdy id z ns() !!!!!