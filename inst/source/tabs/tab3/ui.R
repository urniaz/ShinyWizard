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
    selectInput(
      "select",
      "Select option",
      choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
      selected = 1
    ),
    actionButton(ns("newTab"), "Append tab", icon = icon("plus")),
    actionButton(ns("removeTab"), "Remove current tab", icon = icon("minus")),
    actionButton(ns("runTabs"), "Run tabs", icon = icon("play"))
  ),
  tags$br(),
  tabsetPanel(id=ns("EditTabs"), type="pills")
)