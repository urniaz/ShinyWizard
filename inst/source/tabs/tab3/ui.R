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
    actionButton(ns("runTabs"), "Run", icon = icon("play")),
    downloadButton(ns("DownloadShinyWizardZIP"), "Download")
  ),
  tags$br(),
  tabsetPanel(id=ns("EditTabs"), type="pills"),
  
  verbatimTextOutput(outputId = ns("result")),
  verbatimTextOutput(outputId = ns("result2"))
)