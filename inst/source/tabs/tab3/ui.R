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
    actionLink(ns("newTab"), "Append tab"),
    actionLink(ns("removeTab"), "Remove current tab")
  ),
  tabsetPanel(id=ns("myTabs"), type="pills")
)