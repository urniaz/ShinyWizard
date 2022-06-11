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
            <a href="#" target="_blank" id="my-link" onclick="javascript:document.getElementById("NavBar-go_2_1").click();">Google Chrome</a>
          ')
 )
)

# zawsze ns() do id !!!!! lacznie z output każdy id z ns() !!!!!