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
      <p>If you\'re seeing this page, that means Shiny Wizard is installed and running. <strong>Congratulations!</strong> </p>Now please choose one of next step, below.
      <br />
      <br />
      <div style="background-color: #cfc ;">
      <button id="NavBar-go_1_2" type="button" class="btn btn-default action-button shiny-bound-input">New Project</button>
      </ div>
      <div style="background-color: #cfc ;">'),
     fileInput("projectFile", "Open previous project", accept = ".zip"),
     HTML("</ div></center>")
 )
)

# zawsze ns() do id !!!!! lacznie z output każdy id z ns() !!!!!