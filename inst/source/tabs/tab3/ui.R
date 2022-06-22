# --- Navigation ---
# TabName: Tabs
# TabIcon: file

# --- Next/Prev buttons
# ShowButtons: TRUE
# ButtonsAlignment: center

# --- Info ---
# InfoTitle: tir
# InfoMessage: mes


fluidPage(
  tabsetPanel(id = ns("tabs"),
              tabPanel(title = "Main",
                       value = "main",
                       
                       ## CONTENT PANEL ----- :
                       p("Add a new tab"),
                       actionButton("add", "Add", icon = icon("plus-circle"))
              ))
)