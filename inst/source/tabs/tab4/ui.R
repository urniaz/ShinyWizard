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
    downloadButton(ns("DownloadShinyWizardZIP"), "Download")
  ),
  tags$br(),
  
  verbatimTextOutput(outputId = ns("result")),

)