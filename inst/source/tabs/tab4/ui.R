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
  fluidRow(HTML('<center><h1>Welcome!</h1>
      <p> Now it is time for download and deploy your project.
                Remember to save changes and download file.
                <br /> <br />
                Downloaded file can be simply deployed as,... 
                <br /> <br /> separate file <br /> 
                <code>ShinyWizard::RunShinyWizard()</code>
                  <br /> <br /> 
                  or a part of your package 
                  <br /> 
                <code>ShinyWizard::RunShinyWizard()</code>
      </p>
      '),
    downloadButton(ns("DownloadShinyWizardZIP"), "Download")
  ),
  tags$br(),
  HTML('<center>'),
  verbatimTextOutput(outputId = ns("result")),

)