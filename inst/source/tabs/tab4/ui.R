# --- Navigation ---
# TabName: Download & deploy
# TabIcon: download

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