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
    actionLink("newTab", "Append tab"),
    actionLink("removeTab", "Remove current tab")
  ),
  tabsetPanel(id="myTabs", type="pills")
)