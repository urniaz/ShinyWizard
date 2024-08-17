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
    HTML('<div class="p-5 text-center bg-body-tertiary rounded-3">
    <svg class="bi mt-4 mb-3" style="color: var(--bs-indigo);" width="100" height="100"><use xlink:href="#bootstrap"></use></svg>
    <h1 class="text-body-emphasis">Jumbotron with icon</h1>
    <p class="col-lg-8 mx-auto fs-5 text-muted">
      This is a custom jumbotron featuring an SVG image at the top, some longer text that wraps early thanks to a responsive <code>.col-*</code> class, and a customized call to action.
    </p>
    <div class="d-inline-flex gap-2 mb-5">
      <button class="d-inline-flex align-items-center btn btn-primary btn-lg px-4 rounded-pill" type="button">
        Call to action
        <svg class="bi ms-2" width="24" height="24"><use xlink:href="#arrow-right-short"></use></svg>
      </button>
      <button class="btn btn-outline-secondary btn-lg px-4 rounded-pill" type="button">
        Secondary link
      </button>
    </div>
  </div>'),
     HTML('<center><h1>Welcome!</h1>
      <p>If you\'re seeing this page, that means Shiny Wizard is installed and running. 
      <strong>Congratulations!</strong> 
      </p>Now please choose one of the option:
      '),
     br(),
     br(),
        next_prev_button(1,2, NextName = "New Project"),
     br(),
     br(),
     p("Edit existing project (*.zip)"),
     br(),
     br(),
        fileInput(ns("ProjectFile"), NULL, accept = ".zip"),
     HTML("</center>")
 )
)

# zawsze ns() do id !!!!! lacznie z output każdy id z ns() !!!!!