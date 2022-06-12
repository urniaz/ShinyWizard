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
  div(style="display:inline-block; float:right;",
      actionButton(ns("add"), "Add", icon = icon("plus-circle")),
      ),
  
  tabsetPanel(id = ns("tabs"),
              tabPanel(title = "Main",
                       value = "main"
              ))
)
