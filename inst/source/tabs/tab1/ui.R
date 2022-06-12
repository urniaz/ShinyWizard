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
      <div class="card">
            <div class="card-header">
              Featured
            </div>
            <div class="card-body">
              <h5 class="card-title">Special title treatment</h5>
              <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
              <a href="#!" class="btn btn-primary">Go somewhere</a>
              <button id="NavBar-go_1_2" type="button" class="btn btn-default action-button shiny-bound-input">New Project</button>
            </div>
          </div>
           <div class="example z-depth-1">
            .z-depth-1
        </div>
      '),
     fileInput("projectFile", "Open previous project", accept = ".zip"),
     HTML("</center>")
 )
)

# zawsze ns() do id !!!!! lacznie z output każdy id z ns() !!!!!