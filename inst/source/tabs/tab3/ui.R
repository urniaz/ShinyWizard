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
    actionButton(ns("newTab"), "Append tab"),
    actionButton(ns("removeTab"), "Remove current tab")
  ),
  tabsetPanel(id=ns("EditTabs"), type="pills")
)