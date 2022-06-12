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
            <button id="NavBar-go_1_2" type="button" class="btn btn-default action-button shiny-bound-input">Next</button>
          '),
     fileInput("projectFile", "Choose Project File", accept = ".zip")
 )
)

# zawsze ns() do id !!!!! lacznie z output każdy id z ns() !!!!!