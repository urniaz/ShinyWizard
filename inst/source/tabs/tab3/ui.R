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
    actionButton(ns("newTab"), "Add", icon = icon("plus")),
    actionButton(ns("removeTab"), "Remove", icon = icon("minus")),
    actionButton(ns("SaveTab"), "Save", icon = icon("floppy-disk")),
    actionButton(ns("SaveTabs"), "Save all", icon = icon("floppy-disk")),
    actionButton(ns("runTabs"), "Run", icon = icon("play"))
  ),
  tags$br(),
  tabsetPanel(id=ns("EditTabs"), type="pills")
)