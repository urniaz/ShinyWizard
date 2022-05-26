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
    <div class="form-group shiny-input-container"><input type="file"
       id="avatar" name="avatar" class="form-control">
          </div>'),
     verbatimTextOutput("directorypath"),
     textInput(inputId = ns("directory"),
               label = "Title")

  )
)

# zawsze ns() do id !!!!! lacznie z output każdy id z ns() !!!!!