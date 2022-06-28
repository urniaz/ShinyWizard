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
  fluidRow(
    actionButton(ns("newTab"), "Append tab", icon = icon("plus")),
    actionButton(ns("removeTab"), "Remove current tab", icon = icon("minus")),
    actionButton(ns("runTab"), "Run tabs", icon = icon("minus"))
  ),
  tags$br(),
  tabsetPanel(id=ns("EditTabs"), type="pills")
)