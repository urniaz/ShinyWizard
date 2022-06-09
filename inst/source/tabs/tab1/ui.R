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
    <input type="file" id="myFile" name="filename">'),
     actionButton(inputId = ns("butat"), label = "click"),
     fileInput(
       "inputId",
       "label",
       buttonLabel = "Browse...",
       placeholder = "No file selected"
     )
 )
)

# zawsze ns() do id !!!!! lacznie z output każdy id z ns() !!!!!