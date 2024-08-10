# --- Navigation ---
# TabName: Download
# TabIcon: file

# --- Next/Prev buttons
# ShowButtons: TRUE
# ButtonsAlignment: center

# --- Info ---
# InfoTitle: tir
# InfoMessage: mes


fluidPage(
  fluidRow(
    downloadButton(ns("downloadData"), "Download"),
    verbatimTextOutput(outputId = "result")
  )
)