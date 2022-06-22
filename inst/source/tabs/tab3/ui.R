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
  sidebarLayout(
    sidebarPanel(
      actionButton(ns("add"), "Add 'Dynamic' tab")
    ),
    mainPanel(
      tabsetPanel(id = ns("tabs"),
                  tabPanel("Tab",  "cont")
      )
    )
  )
)