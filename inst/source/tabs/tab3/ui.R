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
  ## CONTENT PANEL ----- :
  div(style="display:inline-block",
      p("Add a new tab"),
      actionButton(ns("add"), "Add", icon = icon("plus-circle")),
      style="float:right"),
  
  tabsetPanel(id = ns("tabs"),
              tabPanel(title = "Main",
                       value = "main"
              ))
)
