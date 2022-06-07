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
    <label for="avatar">Choose a profile picture:</label>'),
     actionButton(inputId = ns("butat"), label = "click")
 )
)

# zawsze ns() do id !!!!! lacznie z output każdy id z ns() !!!!!