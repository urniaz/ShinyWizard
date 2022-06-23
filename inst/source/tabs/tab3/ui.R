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
      actionButton(ns("add"), "Add 'Dynamic' tab"),
      actionButton(ns("remove"), "Remove 'Foo' tab")
    ),
    mainPanel(
      tabsetPanel(id = ns("tabs"),
                  tabPanel("Foo", actionButton(ns("remove"), "Remove 'Foo' tab"))
      )
    )
  )
)