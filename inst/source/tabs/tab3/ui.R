# --- Navigation ---
# TabName: Tabs
# TabIcon: file

# --- Next/Prev buttons
# ShowButtons: TRUE
# ButtonsAlignment: center

# --- Info ---
# InfoTitle: tir
# InfoMessage: mes


navbarPage("Navbar page", id = ns("tabs"),
                 tabPanel(ns("Home"),
                          actionButton(ns("prepend"), "Prepend a navbarMenu"),
                          actionButton(ns("append"), "Append a navbarMenu")
                 )
)